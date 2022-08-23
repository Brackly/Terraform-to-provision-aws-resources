resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block              = var.subnet_cidr_block_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} ${var.availability_zone_1} public subnet"
  }

}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block              = var.subnet_cidr_block_2
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} ${var.availability_zone_1} private subnet"
  }

}