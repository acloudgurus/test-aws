provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "../modules/vpc"
  cidr_block          = var.vpc_cidr_block
  subnet_cidr_blocks  = var.subnet_cidr_blocks
  availability_zones  = var.availability_zones
}

module "api_gateway" {
  source                 = "../modules/api_gateway"
  api_name               = var.api_name
  path_part              = var.path_part
  http_method            = var.http_method
  lambda_integration_uri = module.lambda.invoke_arn
}

module "lambda" {
  source        = "../modules/lambda"
  lambda_zip    = var.lambda_zip
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
}

module "dynamodb" {
  source     = "../modules/dynamodb"
  table_name = var.table_name
  hash_key   = var.hash_key
  hash_key_type = var.hash_key_type
}
