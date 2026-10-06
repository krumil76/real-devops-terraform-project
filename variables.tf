variable "db_password" {
  description = "RDS database password"
  type        = string
  sensitive   = true
}
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
