variable "vpc_id" {
  description = "VPC ID for security groups"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "app_port" {
  description = "Application port"
  type        = number
  default     = 3000
}
