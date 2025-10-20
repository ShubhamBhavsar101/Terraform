terraform {
  backend "s3" {
    bucket = "shubh-general-purpose-bucket"
    key="finance/terraform.tfstate"
    region="ap-south-1"
    dynamodb_table="shubh-terraform-lock"
  }
} 