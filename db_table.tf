resource "aws_dynamodb_table" "dynamodb-table" {
  name         = "terraformLock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "UserId"

  attribute {
    name = "UserId"
    type = "S"
  }


}
resource "aws_s3_bucket" "example" {
  bucket = "denis-practice-tf-state-2024"

  tags = {
    Name = "DB bucket"
  }
}