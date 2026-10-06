variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet configuration"

  type = map(object({
    cidr = string
    az   = string
  }))

  default = {
    public_1 = {
      cidr = "10.0.1.0/24"
      az   = "us-east-2a"
    }

    public_2 = {
      cidr = "10.0.2.0/24"
      az   = "us-east-2b"
    }
  }
}

variable "private_subnets" {
  description = "Private subnet configuration"

  type = map(object({
    cidr = string
    az   = string
  }))

  default = {
    private_1 = {
      cidr = "10.0.11.0/24"
      az   = "us-east-2a"
    }

    private_2 = {
      cidr = "10.0.12.0/24"
      az   = "us-east-2b"
    }
  }
}
