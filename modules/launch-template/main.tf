resource "aws_launch_template" "this" {
  name_prefix   = local.lt_name
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = var.security_group_ids

  user_data = templatefile(var.user_data_template, {
    instance_name = local.lt_name
  })

  tag_specifications {
    resource_type = "instance"
    tags          = local.default_tags
  }

  lifecycle {
    create_before_destroy = true
  }
}

