module "vpc" {
  source = "./modules/vpc"

  vpc_cidr    = "10.0.0.0/16"
  environment = var.environment
}

module "security" {
  source = "./modules/security"

  vpc_id      = module.vpc.vpc_id
  environment = var.environment
  app_port    = 80
}

module "ec2" {
  source = "./modules/ec2"

  vpc_id                = module.vpc.vpc_id
  public_subnet_ids     = module.vpc.public_subnet_ids
  ec2_security_group_id = module.security.ec2_security_group_id
  environment           = var.environment
  instance_type         = "t3.micro"
  instance_count        = 2
  target_group_arns     = [module.alb.target_group_arn]
}

module "alb" {
  source = "./modules/alb"

  vpc_id                = module.vpc.vpc_id
  public_subnet_ids     = module.vpc.public_subnet_ids
  alb_security_group_id = module.security.alb_security_group_id
  environment           = var.environment
  target_port           = 80
}

module "rds" {
  source = "./modules/rds"

  environment           = var.environment
  private_subnet_ids    = module.vpc.private_subnet_ids
  rds_security_group_id = module.security.rds_security_group_id
  db_password           = var.db_password
}

module "s3" {
  source = "./modules/s3"

  environment = var.environment
}

module "cloudwatch" {
  source = "./modules/cloudwatch"

  environment            = var.environment
  autoscaling_group_name = module.ec2.autoscaling_group_name
}
