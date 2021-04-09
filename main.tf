provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tfsb"
    key    = "statebuck"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "tfsb" {
  bucket = "tfsb"
  acl    = "private"

  tags = {
    Name        = "state_bucket"
  }
    versioning {
        enabled = true
       }
  
}

resource "aws_dynamodb_table" "terraform-lock" {
    name           = "terraform_state"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        "Name" = "DynamoDB "
    }
 }