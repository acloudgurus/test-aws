terraform {
  backend "s3" {
    bucket         = "my-terraform-stat1"
    key            = "path/to/my/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "my-lock-table"
  }
}
