terraform {
    required_providers {
      aws = {
      source = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"

  assume_role {
    
  }
}

# Defining the Security Group for the instance
resource "aws_security_group" "default_sg" {
  name = "main-sg"
  description = "The main security group for the resources."

  tags = {
    Name = "Main_sg"
  }
}



## AWS EC2 Instance 
resource "aws_instance" "experimental_instance" {
    
}