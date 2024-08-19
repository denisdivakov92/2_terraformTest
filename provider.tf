#Definition of a provider ==> https://registry.terraform.io/providers/hashicorp/aws/latest/docs
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
  }
}

#Provider Configuration
provider "aws" {
  profile = "terraform_denis" #Get profile from .aws/config
  region  = var.aws_region
}
