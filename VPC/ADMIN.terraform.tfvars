# ADMIN DEFAULTS

aws_region = "us-east-1"
env        = "STAG"
department = "ADMIN"
profile    = "Admin"

cidr                               = "10.0.0.0/16"
azs                                = ["us-east-1a", "us-east-1b"]
public_subnets                     = ["10.0.131.0/24", "10.0.132.0/24"]
private_subnets                    = ["10.0.134.0/24", "10.0.135.0/24"]
database_subnets                   = ["10.0.138.0/24", "10.0.139.0/24"]
create_database_subnet_group       = true
create_database_subnet_route_table = true
enable_nat_gateway                 = true
single_nat_gateway                 = true
