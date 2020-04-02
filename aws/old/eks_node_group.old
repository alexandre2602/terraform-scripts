resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = "eks-gudiao-labs-nodes"
  node_role_arn   = aws_iam_role.eks-node-service-role.arn
  subnet_ids      = aws_subnet.eks-private.*.id

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  tags = {
    "Name" = "eks_node_group"
    "kubernetes.io/cluster/${var.cluster-name}" = "owned"
  }

}