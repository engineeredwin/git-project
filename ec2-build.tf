terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "cliaccess"
}

resource "aws_instance" "newserv" {
  ami                    = "ami-0b0dcb5067f052a63"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = ["sg-0f1b059fdeab0b47a"]

  tags = {
    name    = "terra-instance"
    project = "cliaccess-project"
  }
}
