variable "region" {
  default = "us-east-1"
}

variable "tag_default_name" {
  default = "gudiaoLabs"
}

#Variables VPC - Network
variable "vpc_cidr_block" {
  description = "Range of IPv4 address for the VPC"
  default     = "10.0.0.0/16"
}

variable "az_count" {
  default = 2
}

variable "az_fator_mult" {
  default = 2
}

# Variables EKS
variable "eks-cluster-name" {
  default     = "eks-gudiao-local"
  description = "Enter eks cluster name - example like eks-demo, eks-dev etc"
}

variable "eks_version" {
  default = "1.15"
}

variable "eks-worker-ami" {
  default = "ami-0dc7713312a7ec987"
}

variable "worker-node-instance_type" {
  default = "t2.micro"
}

variable "ssh_key_pair" {
  default = "gudiaoEKS-Keypair"
}

# Variables RDS Service
variable "identifier" {
  default = "gudiao-labs-postgres"
}

variable "engine" {
  default = "postgres"
}

variable "engine_version" {
  default = "11.5"
}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "allocated_storage" {
  default = 10
}

variable "storage_type" {
  default = "gp2"
}

variable "storage_encrypted" {
  default = false
}

variable "db-name" {
  default = "gudiaolabsdatabase"
}

variable "username" {
  default = "gudiao"
}

variable "password" {
  default = "gudiao123"
}

variable "port" {
  default = 5432
}

variable "multi_az" {
  default = "false"
}

variable "deletion_protection" {
  default = false
}

variable "timeouts" {
  default = "5m"
}




