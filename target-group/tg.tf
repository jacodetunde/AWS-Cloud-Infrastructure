resource "aws_lb_target_group" "target_groups" {
  for_each = var.target_groups

  name         = each.value.name
  port         = each.value.port
  protocol     = each.value.protocol
  target_type  = each.value.target_type
  vpc_id       = each.value.vpc_id

  health_check {
    healthy_threshold   = each.value.health_check.healthy_threshold
    unhealthy_threshold = each.value.health_check.unhealthy_threshold
    timeout             = each.value.health_check.timeout
    interval            = each.value.health_check.interval
    path                = each.value.health_check.path
    port                = each.value.health_check.port
  }
}

