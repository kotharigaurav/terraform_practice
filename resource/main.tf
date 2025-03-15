provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "gaurav-terraform-state-bucket"
    key    = "terraform-state"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "gaurav-terraform-testing-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}