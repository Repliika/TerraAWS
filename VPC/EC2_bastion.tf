# Bastion Host in Public Subnet
module "bastion_host" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"

  # insert the 10 required variables here
  name = "${var.department}-${var.env}-BastionHost"
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.keypair
  subnet_id = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]    
  tags = local.common_tags
}