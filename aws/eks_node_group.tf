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

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.eks-node-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks-node-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks-node-AmazonEC2ContainerRegistryReadOnly
  ]
}