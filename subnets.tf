resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block = "10.0.1.0/24"

  availability_zone=

  tags = {
    Name = "public_subnet"
  }

}