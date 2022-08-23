resource "aws_internet_gateway" "Terraform_igw" {
  vpc_id = aws_vpc.Terraform_provisioned_vpc.id
  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} internet gateway"
  }
}

# resource "aws_internet_gateway_attachment" "example" {
#   internet_gateway_id = aws_internet_gateway.Terraform_igw.id
#   vpc_id              = aws_vpc.Terraform_provisioned_vpc.id
# }