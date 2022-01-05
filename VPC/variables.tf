
#Region
variable "aws_region" {
  description = "region to create"
  type        = string
  default     = "us-east-1"
}

#Environment
variable "env" {
  description = "environment used as a prefix"
  type        = string
  default     = "DEV"
}

#Department
variable "department" {
  description = "department name as a prefix"
  type        = string
  default     = "HR"
}

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
