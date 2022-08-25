# Terraform-to-provision-aws-resources
Infrastructure as Code (Iac) is the key to immutable infrastructure. 
Terraform leverages the concept of state; desired state vs actual state,to promote this, meaning you could write code to express the desired state of 
your infrastructure, and applying it using terraform would trigger terraform to match its actual state to your desired one.

This repository contains terraform files in which I leverage the Hashicorp Configuration Language (HCL) to provision resources to AWS. The resources are:

1. A Virtual Private Cloud.
2. 4 Subnets(2 public and 2 private) and their associated routetables and routes.
3. Security groups configuring the behaviour of the instances deployed in the specific subnets.
4. An internet gateway for the public subnets.
5. A NAT gateway for the private subnets.
6. A managed Kubernetes Cluster (EKS) and its associated Nodegroups.

