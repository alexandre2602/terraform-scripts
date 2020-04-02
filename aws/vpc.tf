resource "aws_vpc" "eks" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = false
  enable_dns_support = false

  tags = {
    "Name"                                      = "${var.tag_default_name}-vpc"
    "kubernetes.io/cluster/${var.eks-cluster-name}" = "shared"
  }
}