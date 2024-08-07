provider "aws" {}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.61.0"
    }
  }

  backend "s3" {
    bucket  = "terraform-bloodconnect-oidc-backend"
    key     = "terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
