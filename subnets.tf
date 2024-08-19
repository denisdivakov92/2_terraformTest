
resource "aws_subnet" "subnets" {
  count      = var.subnet_count
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 3, count.index)
  availability_zone = count.index % 2 == 0 ? "us-west-2a" : "us-west-2b" # count index is equal then use us-west-2a, otherwise use us-west-2b

tags = {
    Name = count.index < 2 ? "Public Subnet ${count.index + 1}" : "Private Subnet ${count.index + 1}"
  }
}   # first 2 subnets will be public next  - private
