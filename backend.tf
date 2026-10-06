terraform {
  backend "s3" {
    bucket = "krumil-terraform-state-2026-344531454849"
    key    = "real-devops-project/terraform.tfstate"
    region = "us-east-2"
  }
}
