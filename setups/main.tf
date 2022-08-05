terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_vpc" "main" {
	cidr_block = "10.0.0.0/16"
}


module "WebServer" {
	source        = "../modules/webserver"
	webserver_name = "Vikas-webserver"
	vpc_id        = aws_vpc.main.id
	cidr_block    = "10.0.0.0/16"
	ami           = "ami-0cabc39acf991f4f1"
	instance_type = "t2.micro"
}