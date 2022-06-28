terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.66.0"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "demo" {
  ami           = lookup(var.ami, terraform.workspace)
  instance_type = var.instance_type
  tags = {
    "Name" = terraform.workspace
  }
}

