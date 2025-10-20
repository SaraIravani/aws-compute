locals {
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

