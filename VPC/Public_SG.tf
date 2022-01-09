#AWS EC2 Security Group Terraform Module for Public Bastion
module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  #name, description, vpc_id required
  name        = "public-bastion-sg"
  description = "Bastion with SSH and HTTP port open, egress ports are open"
  vpc_id      = module.vpc.vpc_id
  #Ingress Rules with CIDR Block allowed (everyone)  
  ingress_rules = ["ssh-tcp"]
  #Needs a block otherwise none used
  ingress_cidr_blocks = ["0.0.0.0/0"]
  #Egress Rule - all open
  egress_rules = ["all-all"]
  tags         = local.common_tags
}
