terraform {

  backend "s3" {

    bucket = "my-terraform-state-capstone"

    key = "eks-demo/terraform.tfstate"

    region = "ap-south-1"

    encrypt = true

    use_lockfile = true
  }
}