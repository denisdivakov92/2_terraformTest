resource "aws_launch_template" "asg" {
  name_prefix   = "asg-launch-template-"
  image_id      = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "asg" {
  count               = var.asg_count
  name                = "${var.asg_name}-${count.index + 1}"
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = [aws_subnet.subnets[0].id, aws_subnet.subnets[2].id]
  
  launch_template {
    id      = aws_launch_template.asg.id
    version = "$Latest"
  }

}
