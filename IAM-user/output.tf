output "user_names" {
  value = aws_iam_user.users[*].name
}

output "user_arns" {
  value = aws_iam_user.users[*].arn
}

output "policy_attachments" {
  value = aws_iam_user_policy_attachment.policies[*]
}
