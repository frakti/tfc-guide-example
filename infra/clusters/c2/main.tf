terraform {
  backend "remote" {
    organization = "voucherify-poc"

    workspaces {
      name = "cluster-2"
    }
  }
}

provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}


module "ec2-2" {
  source = "../../modules/ec2"
}
