# Call EC2 instance module
module "ec2_instance" {
  source             = "./modules/ec2-instance"
  instance_name      = local.ec2_name
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  ami_id             = var.ami_id
  key_name           = var.key_name
  user_data_template = var.user_data_template
  tags               = local.default_tags
}

