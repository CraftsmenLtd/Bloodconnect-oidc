resource "aws_iam_group" "developers" {
  name = "Developers"
  path = "/users/"
}

resource "aws_iam_group_policy" "developer" {
  name  = "developers"
  group = aws_iam_group.developers.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["sts:AssumeRole"]
        Effect   = "Allow"
        Resource = aws_iam_role.github_actions_and_dev_role.arn
      }
    ]
  })
}
