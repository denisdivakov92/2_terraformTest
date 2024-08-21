resource "aws_dynamodb_table" "dynamodb-table" {
  name           = "terraformLockNew"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "denis-practice-tf-state-2024"

  tags = {
    Name = "DB bucket"
  }
}