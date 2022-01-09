#EC2 Outputs

output "ec2_bastion_public_instance_id" {
  description = "List of IDs of instances"
  value       = module.bastion_host.id
  }

output "ec2_bastion_public_ip" {
  description = "Bastion Public IP"
  value       = module.bastion_host.public_ip
}
# Private EC2 Instances
output "ec2_private_instance_ids" {
  description = "EC2 private servers"
  value       = module.EC2_private.id
}
output "ec2_private_ip" {
  description = "EC2 private server IP"
  value       = module.EC2_private.private_ip
}