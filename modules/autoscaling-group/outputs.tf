output "asg_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.this.name
}

output "asg_arn" {
  description = "ARN of the ASG"
  value       = aws_autoscaling_group.this.arn
}

output "instance_ids" {
  description = "IDs of EC2 instances launched by ASG"
  value       = aws_autoscaling_group.this.instances[*].id
}

