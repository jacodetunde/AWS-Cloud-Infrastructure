resource "aws_lb_target_group_attachment" "target_group_attachments" {
  for_each = var.target_group_attachments

  target_group_arn = each.value.target_group_arn
  target_id        = each.value.target_id
  port             = each.value.port
}