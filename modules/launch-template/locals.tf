locals {
  lt_name = "${var.launch_template_name}-${substr(md5(var.launch_template_name),0,6)}"

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

