# Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id #var.vpc_id

  tags = {
    Name = "main"
  }
}
