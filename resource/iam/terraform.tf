terraform {
  backend "s3" {
    bucket = "gaurav-terraform-state-bucket"
    key    = "terraform-state/terraform.tfstate"
    region = "us-east-2"
  }
}