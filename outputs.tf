output "vpc_id" {
  description = "ID of the vpc"
  value       = module.aws_vpc.vpc_id
}

output "instance_id" {
  description = "ID of EC2 instance"
  value       = module.aws_instance.instance_id
}