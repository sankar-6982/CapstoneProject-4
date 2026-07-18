module "eks" {

  source = "terraform-aws-modules/eks/aws"

  version = "~>20.37.2"

  cluster_name = var.cluster_name

  cluster_version = "1.32"

  vpc_id = var.vpc_id

  subnet_ids = var.subnet_ids

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {

    default = {

      desired_size = 2

      max_size = 2

      min_size = 1

      instance_types = ["t3.medium"]

      subnet_ids = var.subnet_ids
    }
  }
}