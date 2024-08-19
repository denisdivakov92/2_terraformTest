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
  default = "t2.micro"
}

################ CIDR ###########################################
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  
}

################### Subnet count ##############
variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
  default     = 6
}

/*
################### subnets #####################################
variable "public_subnet_count" {
  description = "Number of public subnets."
  type        = number
  default     = 2
}

variable "private_subnet_count" {
  description = "Number of private subnets."
  type        = number
  default     = 4
}

variable "public_subnet_cidr_blocks" {     ###############!!!!
  description = "Available cidr blocks for public subnets."
  type        = list(string)
  default     = [
    "10.0.0.0/19",
    "10.0.32.0/19",
    "10.0.64.0/19",
    "10.0.96.0/19",
    "10.0.128.0/19",
    "10.0.160.0/19"
  ]
}

variable "private_subnet_cidr_blocks" {
  description = "Available cidr blocks for private subnets."
  type        = list(string)
  default     = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24",
  ]
}


*/