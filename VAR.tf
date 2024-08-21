################ Region ##########################################
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

################## Instances ###################################
variable "instance_count" {
  description = "Number of instances to provision."
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "AWS EC2 instance type."
  type        = string
  default     = "t2.micro"
}
################# ASG  #################################
variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
  default     = "my-asg"
}

variable "asg_count" {
  description = "Number of Auto Scaling Groups to create"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = number
  default     = 1
}


variable "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling Group"
  type        = number
  default     = 2
}


################ CIDR ###########################################
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

################### Subnet count ##################################
variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
  default     = 6
}

###################### Route Table ################################
/*
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to associate with the route table"
  type        = list(string)
}
*/
variable "igw_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "IGW"
}

variable "route_table_name" {
  description = "Name tag for the Route Table"
  type        = string
  default     = "Public"
}

#######################  RDs ######################################
variable "cluster_identifier" {
  type    = string
  default = "my-rds-01"
}

variable "engine" {
  type    = string
  default = "mysql"
}

variable "db_cluster_instance_class" {
  type    = string
  default = "db.r6gd.xlarge"
}

variable "storage_type" {
  type    = string
  default = "io1"
}

variable "allocated_storage" {
  type    = number
  default = 100
}

variable "iops" {
  type    = number
  default = 1000
}

variable "master_username" {
  type    = string
  default = "denis"
}

variable "master_password" {
  type      = string
  sensitive = true
}

########################### RDS subnet group ############################
