variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "api_name" {
  description = "Name of the API Gateway"
  type        = string
}

variable "path_part" {
  description = "Path part of the resource"
  type        = string
}

variable "http_method" {
  description = "HTTP method for the API Gateway"
  type        = string
}

variable "lambda_zip" {
  description = "Path to Lambda zip file"
  type        = string
}

variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "handler" {
  description = "Handler for the Lambda function"
  type        = string
}

variable "runtime" {
  description = "Runtime environment for the Lambda function"
  type        = string
}

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "hash_key" {
  description = "Hash key for the DynamoDB table"
  type        = string
}

variable "hash_key_type" {
  description = "Hash key type"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "owner_account_id" {
  description = "The AWS account ID of the owner"
  type        = string
  default     = "905418265135"
}