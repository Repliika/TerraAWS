#VARIABLES TO CREATE VPC

#Profile for credentials
variable "profile" {
  description = "enter AWS profile name that is configured"
  type        = string
  default     = "Default"
}

#Region
variable "aws_region" {
  description = "region to create"
  type        = string
  default     = "us-east-1"
}

variable "cidr" {
  description = "cidr block"
  type        = string
  default     = "10.0.0.0/16"
}

#Environment name
variable "env" {
  description = "environment used as a prefix for VPC name"
  type        = string
  default     = "DEV"

  validation {
    condition     = contains(["DEV", "dev", "PROD", "prod", "STAG", "stag"], var.env)
    error_message = "Enter the right environment: dev, stag, prod."
  }
}

#Department name
variable "department" {
  description = "department name as a prefix for VPC name"
  type        = string
  default     = "HR"
  validation {
    condition     = contains(["HR", "hr", "BILL", "BILL", "ADMIN", "admin"], var.department)
    error_message = "Enter the right department: HR, ADMIN, BILL."
  }
}

#Availability zone 
variable "azs" {
  type    = list(string)
  default = ["eu-east-1a", "eu-east-1b"]
}

#Public subnet CIDR
variable "public_subnets" {
  type    = list(string)
  default = ["10.0.102.0/24", "10.0.103.0/24"]
}

#Private subnet CIDR
variable "private_subnets" {
  description = "CIDR for private subnets"
  type        = list(string)
  default     = ["10.0.104.0/24", "10.0.105.0/24"]
}

#Database subnet CIDR
variable "database_subnets" {
  description = "CIDR for DB subnets"
  type        = list(string)
  default     = ["10.0.108.0/24", "10.0.102.109/24"]
}

# VPC create DB subent(True/False)
variable "create_database_subnet_group" {
  description = "VPC create DB Subnet group"
  type        = bool
  default     = true
}

# VPC create DB route table (True/False)
variable "create_database_subnet_route_table" {
  description = "VPC create DB route table for DB subnet"
  type        = bool
  default     = true
}


# VPC Enable NAT Gateway (True/False) 
variable "enable_nat_gateway" {
  description = "enable NAT Gateways for egress communication"
  type        = bool
  default     = true
}

# VPC single NAT Gateway per AZ (True/False)
variable "single_nat_gateway" {
  description = "one NAT Gateway per AZ"
  type        = bool
  default     = true
}

#Local variable to function the name and tags
locals {
  department = var.department
  env        = var.env
  vpc_id     = "${var.department}-${var.env}"
  common_tags = {
    department  = local.department
    environment = local.env
    vpc         = local.vpc_id
  }
}
