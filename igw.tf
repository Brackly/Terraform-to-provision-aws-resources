resource "aws_internet_gateway" "terraform_igw" {
  vpc_id = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block= "10.0.0.0/19"
  availability_zone= "us-east-2a"

  tags = {
    Name = "terraform_igw"
    "kubernetes.io/role/elb"= "1"
    "kubernetes.io/cluster/demo"= "owned"
  }
}