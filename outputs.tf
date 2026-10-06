output "aws_region" {
  description = "AWS region used by Terraform"
  value       = var.aws_region
}

output "environment" {
  description = "Environment name"
  value       = var.environment
}
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}
