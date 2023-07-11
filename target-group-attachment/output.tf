output "target_group_attachment_ids" {
  value = [for attachment in aws_lb_target_group_attachment.target_group_attachments : attachment.id]
}
