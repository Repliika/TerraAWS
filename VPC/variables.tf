#VARIABLES TO CREATE VPC

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
  description = "environment used as a prefix"
  type        = string
  default     = "DEV"
}

#Department name
variable "department" {
  description = "department name as a prefix"
  type        = string
  default     = "HR"
}

#Availability zone 
variable "az" {
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
  default     = ["10.0.110.0/24", "10.0.102.111/24"]
}

# VPC create DB subent(True/False)
variable "vpc_create_database_subnet_group" {
  description = "VPC create DB Subnet group"
  type        = bool
  default     = true
}

# VPC create DB route table (True/False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC create DB route table for DB subnet"
  type        = bool
  default     = true
}


# VPC Enable NAT Gateway (True/False) 
variable "vpc_enable_nat_gateway" {
  description = "enable NAT Gateways for egress communication"
  type        = bool
  default     = true
}

# VPC single NAT Gateway per AZ (True/False)
variable "vpc_single_nat_gateway" {
  description = "one NAT Gateway per AZ"
  type        = bool
  default     = true
}

#Local variable to function the name and tags
locals {
  department = var.department
  env        = var.env
  vpc_name   = "${var.department}-${var.env}"
  common_tags = {
    department  = local.department
    environment = local.env
    vpc         = local.vpc_name
  }
}
