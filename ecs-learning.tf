terraform {
    required_providers {
      aws = {
      source = "hashicorp/aws"
      version = "4.48.0"
    }
  }
  
}

# My main region is eu-north-1 (Stockholm).
provider "aws" {
  region = "eu-north-1"
}

resource "aws_ecr_repository" "employee_man_app_ecr_repository" {
  name = "employee-management-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = "false"
  } 
}

