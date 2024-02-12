terraform {
  backend "s3" {
    bucket = "awsbucket0910"
    key    = "aws-parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}