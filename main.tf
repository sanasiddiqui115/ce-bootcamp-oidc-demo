terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "ironhack-terraform-demo-apple"

  tags = {
    Name = "terraform-demo"
    Env  = "dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}