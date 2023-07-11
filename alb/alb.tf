resource "aws_lb" "LB" {
  name               = var.lb_name
  internal           = var.internal-option
  load_balancer_type = var.lb_type
  security_groups    = [var.security_groups]
  subnets            = var.subnets-id
  enable_deletion_protection = var.deletion_protection
  tags = var.alb-tags
}