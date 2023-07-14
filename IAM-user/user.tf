resource "aws_iam_user" "users" {
  count = length(var.users)
  name  = var.users[count.index]
}

resource "aws_iam_user_policy_attachment" "policies" {
  count            = length(var.policies)
  user             = aws_iam_user.users[count.index].name
  policy_arn       = var.policies[count.index]
  depends_on       = [aws_iam_user.users]
}
