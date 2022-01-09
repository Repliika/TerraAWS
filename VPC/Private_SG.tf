#AWS EC2 Security Group Terraform Module for Public Bastion
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  #name, description, vpc_id required
  name        = "private_sg"
  description = "SG, ingress allow HTTP and SSH from VPC, egress open"
  vpc_id      = module.vpc.vpc_id

  #Ingress Rules with CIDR Block allowed (everyone)  
  ingress_rules = ["ssh-tcp", "http-80-tcp"]

  #Needs a block otherwise none used
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  #Egress Rule - all open
  egress_rules = ["all-all"]
  
  tags         = local.common_tags
}
