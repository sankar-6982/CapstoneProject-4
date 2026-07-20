module "network" {

  source = "./modules/network"

  vpc_cidr = var.vpc_cidr

  public_subnets = var.public_subnets
}

module "eks" {

  source = "./modules/eks"

  cluster_name = var.cluster_name

  vpc_id = module.network.vpc_id

  subnet_ids = module.network.public_subnet_ids
}

