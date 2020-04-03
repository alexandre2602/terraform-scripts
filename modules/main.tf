# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "gudiao-labs-tfstates-terraform"
    key    = "terraformt.tfstate"
    region = "us-east-1"
  }
}

module "vpc" {
  source = "./vpc"

  create_vpc = true 

  cidr_block = "10.0.0.0/16"

  vpc-tags = {
    "Name"                                      = "gudia-labs-vpc"
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
  }
  
}
