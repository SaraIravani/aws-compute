output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2_instance.instance_id
}

output "launch_template_id" {
  description = "ID of the Launch Template"
  value       = module.launch_template.launch_template_id
}

output "asg_name" {
  description = "Name of the Auto Scaling Group"
  value       = module.autoscaling_group.asg_name
}

output "asg_arn" {
  description = "ARN of the Auto Scaling Group"
  value       = module.autoscaling_group.asg_arn
}

