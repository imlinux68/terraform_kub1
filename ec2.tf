terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"

    }
  }
}

provider "aws" {
  profile = "default" 
  region  = "us-west-2"
}


resource "aws_instance" "ec2-tf" {
  ami           = "ami-002c2b8d1f5b1eb47"
  instance_type = "t2.micro"
}
