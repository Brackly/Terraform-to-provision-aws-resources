resource "aws_nat_gateway" "NatGateway" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "gw NAT"
  }
  depends_on = [aws_internet_gateway.Terraform_igw]
}

