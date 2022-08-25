resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block              = var.subnet_cidr_block_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} ${var.availability_zone_1} public subnet"
    "kubernetes.io/cluster/Terraform_EKS_Cluster" = "shared"
    "kubernetes.io/role/elb"  = "1"
  }

}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block              = var.subnet_cidr_block_2
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} ${var.availability_zone_1} private subnet"
    "kubernetes.io/cluster/Terraform_EKS_Cluster" = "shared"
    "kubernetes.io/role/elb"  = "1"

  }

}


resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block              = var.subnet_cidr_block_3
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} ${var.availability_zone_2} public subnet"
    "kubernetes.io/cluster/Terraform_EKS_Cluster" = "shared"
    "kubernetes.io/role/elb"  = "1"
  }

}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.Terraform_provisioned_vpc.id
  cidr_block              = var.subnet_cidr_block_4
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} ${var.availability_zone_2} private subnet"
    "kubernetes.io/cluster/Terraform_EKS_Cluster" = "shared"
    "kubernetes.io/role/elb"  = "1"
  }

}