data "aws_iam_role" "AmazonEKSNodeRole" {
  name = "AmazonEKSNodeRole"
}

resource "aws_eks_node_group" "Terraform_EKS_Cluster_Node_group" {
  cluster_name    = aws_eks_cluster.Terraform_EKS_Cluster.name
  node_group_name = "Terraform_EKS_Cluster_Node_group"
  node_role_arn   = data.aws_iam_role.AmazonEKSNodeRole.arn

  subnet_ids = [
        aws_subnet.private_subnet_1.id,
        aws_subnet.private_subnet_2.id
        ]

  ami_type = var.ami_type
  capacity_type = var.capacity_type
  disk_size = var.disk_size
  force_update_version  = var.force_update_version 
  instance_types = var.instance_types

  labels = {
      "role"= "AmazonEKSNodeRole"
  }

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  update_config {
    max_unavailable = var.max_unavailable
  }

}
