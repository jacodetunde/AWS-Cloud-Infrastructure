output "role_name" {
  value       = aws_iam_role.role.name
  description = "Name of the IAM role"
}

output "policy_attachments" {
  value       = aws_iam_role_policy_attachment.policy_attachments[*].policy_arn
  description = "List of IAM policy attachments"
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.instance_profile.name
}
