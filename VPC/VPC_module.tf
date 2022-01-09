#VPC MODULE
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0"
  name    = "${local.vpc_id}-VPC"
  cidr    = var.cidr



  #SUBNET DECLARATIONS
  azs              = var.azs
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  database_subnets = var.database_subnets


  #DATABASE SUBNETS NO CONNECTIONS
  create_database_subnet_group       = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table
  #create_database_internet_gateway_route = true
  #create_database_nat_gateway_route = true

  #CREATE + ENABLE NAT, DNS
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  #enable_nat_gateway = true
  #single_nat_gatway = true


  enable_dns_hostnames = true
  enable_dns_support   = true

  #TAGS
  private_subnet_tags = {
    Type = "public-subnets"
  }

  public_subnet_tags = {
    Type = "public-subnets"
  }

  database_subnet_tags = {
    Type = "database-subnets"
  }

  tags = local.common_tags
}
