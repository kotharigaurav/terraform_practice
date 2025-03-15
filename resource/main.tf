provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "gaurav_terraform_testing_bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}