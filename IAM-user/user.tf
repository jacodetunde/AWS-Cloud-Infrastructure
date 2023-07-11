resource "aws_iam_user" "my_user" {
  name = var.user_name
}

resource "aws_iam_user_policy_attachment" "policy_attachments" {
  for_each = toset(var.policies)

  user       = aws_iam_user.my_user.name
  policy_arn = each.value
}
