# BILLING DEFAULTS

aws_region = "us-east-1"
env        = "prod"
department = "BIL"
profile    = "Bil"

cidr                               = "10.0.0.0/16"
azs                                = ["us-east-1a", "us-east-1b"]
public_subnets                     = ["10.0.111.0/24", "10.0.112.0/24"]
private_subnets                    = ["10.0.114.0/24", "10.0.115.0/24"]
database_subnets                   = ["10.0.118.0/24", "10.0.119.0/24"]
create_database_subnet_group       = true
create_database_subnet_route_table = true
enable_nat_gateway                 = true
single_nat_gateway                 = true
