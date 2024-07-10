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

variable "lambda_integration_uri" {
  description = "Lambda function URI for integration"
  type        = string
}
