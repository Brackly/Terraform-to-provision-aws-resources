output "endpoint" {
  value = aws_eks_cluster.Terraform_EKS_Cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.Terraform_EKS_Cluster.certificate_authority[0].data
}