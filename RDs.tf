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
  
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  db_subnet_group_name   = aws_db_subnet_group.default.name
}


resource "aws_db_subnet_group" "default" {      
  name       = "main"
  subnet_ids = [aws_subnet.subnets[4].id, aws_subnet.subnets[5].id] # association with subnet in 2 diff AZ]  # association with subnet in 2 diff AZ

  tags = {
    Name = "My RDS subnet group"
  }
}