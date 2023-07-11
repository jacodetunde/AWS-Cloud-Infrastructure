output "target_group_arns" {
  value = [for target_group in aws_lb_target_group.target_groups : target_group.arn]
}

