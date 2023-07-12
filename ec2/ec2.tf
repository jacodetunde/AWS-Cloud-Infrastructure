resource "aws_instance" "web" {
  count                       = var.instance_count
  ami                         = var.ami
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  key_name                    = var.keypair
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg-id
  tags                        = var.instance_tags

    iam_instance_profile = var.iam_role
}
