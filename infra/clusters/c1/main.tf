provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}


module "ec2" {
  source = "../modules/ec2"
}
