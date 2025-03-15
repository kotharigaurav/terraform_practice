provider "aws" {
  region = "us-east-1"
}

# resource "aws_s3_bucket" "example" {
#   bucket = "gaurav-terraform-testing-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }