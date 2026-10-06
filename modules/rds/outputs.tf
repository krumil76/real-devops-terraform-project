output "db_endpoint" {
  description = "RDS PostgreSQL endpoint"
  value       = aws_db_instance.main.endpoint
}

output "db_identifier" {
  description = "RDS database identifier"
  value       = aws_db_instance.main.identifier
}
