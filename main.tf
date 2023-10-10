terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "aws_vpc" {
  source = "./modules/aws-vpc"
}

module "aws_instance" {
  source            = "./modules/aws-instance"
  vpc_id            = module.aws_vpc.vpc_id
}
