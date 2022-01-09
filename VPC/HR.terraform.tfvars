<<<<<<< HEAD
#HR DEFAULTS

aws_region = "us-east-1"
env        = "dev"
department = "HR"
profile    = "HR"

cidr                               = "10.0.0.0/16"
azs                                = ["us-east-1a", "us-east-1b"]
public_subnets                     = ["10.0.101.0/24", "10.0.102.0/24"]
private_subnets                    = ["10.0.104.0/24", "10.0.105.0/24"]
database_subnets                   = ["10.0.108.0/24", "10.0.102.109/24"]
create_database_subnet_group       = true
create_database_subnet_route_table = true
enable_nat_gateway                 = true
single_nat_gateway                 = true
=======
#HR DEFAULTS

aws_region = "us-east-1"
env        = "dev"
department = "HR"
profile    = "HR"

cidr                               = "10.0.0.0/16"
azs                                = ["us-east-1a", "us-east-1b"]
public_subnets                     = ["10.0.101.0/24", "10.0.102.0/24"]
private_subnets                    = ["10.0.104.0/24", "10.0.105.0/24"]
database_subnets                   = ["10.0.108.0/24", "10.0.102.109/24"]
create_database_subnet_group       = true
create_database_subnet_route_table = true
enable_nat_gateway                 = true
single_nat_gateway                 = true
>>>>>>> 28990105274ae0cf1cee0986f633a086979569a4
