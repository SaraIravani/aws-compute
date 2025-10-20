variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

# Inputs from other modules (pipeline passes these outputs)
variable "subnet_id" {
  description = "Subnet ID from aws-network module"
  type        = string
}

variable "security_group_ids" {
  description = "Security Group IDs from aws-security module"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID from aws-ami module"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = null
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}

variable "user_data_template" {
  description = "Path to userdata template"
  type        = string
  default     = "../templates/userdata.sh.tmpl"
}

