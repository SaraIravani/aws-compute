resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  key_name                    = var.key_name
  associate_public_ip_address = true

  # User data
  user_data = templatefile(var.user_data_template, {
    instance_name = local.ec2_name
  })

  tags = local.default_tags

  # Optional production best practices
  disable_api_termination = false
  ebs_optimized           = true
}

