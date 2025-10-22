variable "launch_template_name" {
  description = "Name of the Launch Template"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "user_data_template" {
  description = "Path to user data template"
  type        = string
  default     = "../templates/userdata.sh.tmpl"
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}

