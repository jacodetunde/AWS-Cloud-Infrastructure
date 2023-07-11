resource "aws_iam_role" "my_role" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_role_policy_attachment" "policy_attachments" {
  for_each = toset(var.policy_arns)

  role       = aws_iam_role.my_role.name
  policy_arn = each.value
}
