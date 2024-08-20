resource "aws_db_instance" "example" {
  identifier        = var.cluster_identifier
  engine            = var.engine
  instance_class    = var.db_cluster_instance_class
  allocated_storage = var.allocated_storage
  storage_type      = var.storage_type
  iops              = var.iops
  username          = var.master_username
  password          = var.master_password
  
  multi_az          = true 
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [aws_subnet.subnets[2].id, aws_subnet.subnets[3].id]

  tags = {
    Name = "My RDS subnet group"
  }
}