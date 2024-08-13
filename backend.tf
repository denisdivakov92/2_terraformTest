/* terraform {
backend "s3" {
bucket = "denis-practice-tf-state-2024"
key = "dev/terraform.tfstate"
region = "us-west-2"
dynamodb_table = "terraformLock"
encrypt = true
profile = "terraform_denis" # Got it from ~/.aws/config 
}
}
*/