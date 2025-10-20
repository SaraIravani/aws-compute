variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to launch the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type (e.g., t3.medium)"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch the EC2 instance in (from network module)"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs (from security module)"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = null
}

variable "tags" {
  description = "Additional tags to attach to the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "user_data_template" {
  description = "Path to the user data template (cloud-init or bash)"
  type        = string
  default     = "../templates/userdata.sh.tmpl"
}

