#EKS Service
resource "aws_eks_cluster" "eks-cluster" {
  name     = var.cluster-name
  role_arn = aws_iam_role.eks-cluster-service-role.arn

  vpc_config {
    security_group_ids = [aws_security_group.eks-sec-group-cluster.id]
    subnet_ids         = aws_subnet.eks-private.*.id
  }

}