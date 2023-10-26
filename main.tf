terraform {

  /*dim out cloud block
cloud {
    organization = "alienCompany"
    workspaces {
      name = "learn-tfc-aws"
    }
  }
*/


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  #  ami           = "ami-06018068a18569ff2"
  ami           = var.aws_instance-app_server-ami
  instance_type = "t2.micro"

  tags = {
    #    Name = "ExampleAppServerInstance"
    Name = var.instance_name
  }
}

