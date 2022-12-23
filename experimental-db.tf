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

resource "aws_db_instance" "db_for_schema_learning" {
  db_name = "experimental_db"
  engine = "mysql"
  engine_version = "8.0"
  username = "mydb"
  password = "admin"
  allocated_storage = 10

}