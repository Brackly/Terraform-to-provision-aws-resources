resource "aws_route_table" "Terraform_Public_route_table" {
  vpc_id = aws_vpc.Terraform_provisioned_vpc.id

  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} Public route table"
  }
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.Terraform_Public_route_table.id
  destination_cidr_block = var.public_destination_cidr_block
  gateway_id             = aws_internet_gateway.Terraform_igw.id
  depends_on             = [aws_route_table.Terraform_Public_route_table]
}


resource "aws_route_table_association" "Terraform_public_rt_assoc_us_east_1a" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.Terraform_Public_route_table.id
}

resource "aws_route_table_association" "Terraform_public_rt_assoc_us_east_1b" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.Terraform_Public_route_table.id
}

resource "aws_route_table" "Terraform_Private_route_table" {
  vpc_id = aws_vpc.Terraform_provisioned_vpc.id

  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} Private route table"
  }
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.Terraform_Private_route_table.id
  destination_cidr_block = var.public_destination_cidr_block
  gateway_id             = aws_nat_gateway.NatGateway.id
  depends_on             = [aws_route_table.Terraform_Public_route_table]
}

resource "aws_route_table_association" "Terraform_private_rt_assoc" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.Terraform_Private_route_table.id
}

resource "aws_route_table_association" "Terraform_private_rt_assoc_us_east_1b" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.Terraform_Private_route_table.id
}