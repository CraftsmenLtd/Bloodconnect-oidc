output "role_to_assume" {
  value       = aws_iam_role.github_actions_and_dev_role.arn
  description = "use this role to have the same permission as github actions"
}
