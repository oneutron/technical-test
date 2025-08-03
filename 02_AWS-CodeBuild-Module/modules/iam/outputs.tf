output "iam_role_arn" {
  description = "IAM Role Amazon Resource Name"
  value       = aws_iam_role.codebuild_role.arn
}

output "iam_role_name" {
  description = "IAM Role Name"
  value       = aws_iam_role.codebuild_role.name
}

output "iam_role_policy_name" {
  description = "IAM Policy Name"
  value       = aws_iam_role_policy.codebuild_policy.name
}
