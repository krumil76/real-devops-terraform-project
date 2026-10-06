variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for ALB"
  type        = list(string)
}

variable "alb_security_group_id" {
  description = "ALB security group ID"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "target_port" {
  description = "Port where application servers listen"
  type        = number
  default     = 80
}
