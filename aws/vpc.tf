resource "aws_vpc" "eks" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = {
    "Name"                                      = "eks-vpc"
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
  }
}