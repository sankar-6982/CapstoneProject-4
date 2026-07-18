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

module "ec2" {

  source = "./modules/ec2"

  subnet_id = module.network.public_subnet_ids[0]

  ami = var.ami_id

  key_name = var.key_name

  instance_type = var.instance_type

  vpc_id = module.network.vpc_id
}