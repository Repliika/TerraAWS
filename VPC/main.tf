#VPC MODULE
module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
     version = "2.78.0"
    
    name = "VPC-DEV"
    cidr = "10.0.0.0/16"

#SUBNET DECLARATIONS
    azs             = ["eu-east-1a", "eu-east-1b"]
    public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
    private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
    database_subnets = ["10.0.151.0/24", "10.0.152.0/24"]


#DATABASE SUBNETS NO CONNECTIONS
    create_database_subnet_group = true
    create_database_subnet_route_table= true


#CREATE + ENABLE NAT, DNS
    enable_nat_gateway = true
    single_nat_gateway = true
    enable_dns_hostnames = true
    enable_dns_support = true


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

    tags = {
        Terraform = "true"
        Owner = "Terraform"
        Environment = "DEV"
        Name = "VPC-DEV"
    }
}