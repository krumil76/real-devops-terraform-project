resource "aws_s3_bucket" "app" {
  bucket = "${var.environment}-devops-project-storage"

  tags = {
    Name        = "${var.environment}-devops-project-storage"
    Environment = var.environment
  }
}
