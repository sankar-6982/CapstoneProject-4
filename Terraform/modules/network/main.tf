module "vpc" {

  source = "terraform-aws-modules/vpc/aws"

  version = "~>5.0"

  name = "demo-vpc"

  cidr = var.vpc_cidr

  azs = [
    "ap-south-1a",
    "ap-south-1b"
  ]

  public_subnets = var.public_subnets

  private_subnets = []

  enable_nat_gateway = false

  single_nat_gateway = false

  enable_dns_hostnames = true

  enable_dns_support = true

  map_public_ip_on_launch = true
}