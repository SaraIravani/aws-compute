locals {
  # Standardized instance name with short hash
  ec2_name = "${var.instance_name}-${substr(md5(var.instance_name), 0, 6)}"

  # Merge default tags with user-provided tags
  default_tags = merge(
    {
      "Environment" = "dev"
      "Project"     = "aws-compute"
      "ManagedBy"   = "Terraform"
      "Owner"       = "Sara-Iravani"
    },
    var.tags
  )
}

