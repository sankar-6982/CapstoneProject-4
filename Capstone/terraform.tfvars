region = "ap-south-1"

vpc_cidr = "10.0.0.0/16"

public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

cluster_name = "demo-eks"

instance_type = "t3.micro"

ami_id = "ami-006f82a1d5a27da54"

key_name = "Capstone-key"