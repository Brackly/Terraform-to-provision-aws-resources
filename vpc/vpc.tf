resource "aws_vpc" "Terraform_provisioned_vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "Terraform_provisioned_vpc"
  }
  instance_tenancy = "default"
  enable_dns_hostnames= true
}

