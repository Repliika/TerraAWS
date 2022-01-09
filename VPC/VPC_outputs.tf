# VPC OUTPUTS

# VPC ID
output "vpc_id" {
  description = "name of VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR blocks
output "VPC_CIDR" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
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
output "NAT_public_ips" {
  description = "CIDRs of Elastic IPs for NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "List of availability zones used"
  value       = module.vpc.azs
}
