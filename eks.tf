data "aws_iam_role" "EksServiceRole" {
  name = "EksServiceRole"
}


resource "aws_eks_cluster" "Terraform_EKS_Cluster" {
  name     = "Terraform_EKS_Cluster"
  role_arn = data.aws_iam_role.EksServiceRole.arn

  vpc_config {
    
    endpoint_private_access = var.endpoint_private_access
    
    endpoint_public_access = var.endpoint_public_access

    subnet_ids = [
        aws_subnet.public_subnet_1.id,
        aws_subnet.private_subnet_1.id,
        aws_subnet.public_subnet_2.id,
        aws_subnet.private_subnet_2.id,
        ]
  }
}

