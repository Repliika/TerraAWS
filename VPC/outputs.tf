# VPC Output Values

# VPC ID
output "name" {
  description = "name of VPC"
  value       = module.vpc.name
}

# VPC CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.cidr
}

# VPC Private Subnets
output "private_subnets" {
  description = "CIDRs of private subnets"
  value       = module.vpc.private_subnets
}

# VPC Public Subnets
output "public_subnets" {
  description = "CIDRs of IDs of public subnets"
  value       = module.vpc.public_subnets
}

# VPC NAT gateway public IP
output "nat_public_ips" {
  description = "CIDRs of Elastic IPs for NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "List of availability zones used"
  value       = module.vpc.az
}
