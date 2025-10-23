# Mock variables for unit testing

# EC2
ec2_name          = "test-ec2"
ec2_instance_type = "t3.micro"
ec2_key_name      = "test-key"

# Launch Template
launch_template_name = "test-lt"

# Auto Scaling Group
asg_name           = "test-asg"
asg_desired_capacity = 1
asg_min_size       = 1
asg_max_size       = 2

# Networking (mocked)
subnet_ids         = ["subnet-11111111", "subnet-22222222"]
security_group_ids = ["sg-aaaaaaaa"]

# Tags
tags = {
  Environment = "test"
  Project     = "aws-compute"
  ManagedBy   = "Terraform"
  Owner       = "Sara-Iravani"
}

