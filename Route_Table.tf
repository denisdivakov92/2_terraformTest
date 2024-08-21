# Route Table
resource "aws_route_table" "public" {
vpc_id =  aws_vpc.main.id                       

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.route_table_name
  }
}

# Route Table Association
resource "aws_route_table_association" "public" { 
  count = 2
  subnet_id      = aws_subnet.subnets[count.index].id   # Use aws_subnet.subnets[count.index].id to get subnet id's for 2 subnets (cuz count = 2)
  route_table_id = aws_route_table.public.id
}