terraform {
  required_version = ">=0.13.1"
  required_providers {
    aws = ">=4.24.0"
    local = ">=2.2.3"
  }
  backend "s3" {
    bucket = "meu-bucket-teste-terraform"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}