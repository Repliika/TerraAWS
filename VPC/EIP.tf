# EIP for bastion host, made after the resouce is made
resource "aws_eip" "bastion_EIP" {
  #After bastion is made, then attach
  depends_on = [module.bastion_host]
  #Attach to first private instance
  instance =  module.bastion_host.id[0] 
  vpc = true
  tags = local.common_tags  
}