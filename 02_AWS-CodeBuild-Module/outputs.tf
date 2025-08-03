output "codebuild_project_name" {
  description = "Codebuild Project Name"
  value       = module.codebuild.codebuild_project_name
}

output "iam_role_name" {
  description = "The ARN of the CodeBuild project."
  value       = module.iam_role.iam_role_name
}

output "iam_role_policy_name" {
  description = "The ARN of the CodeBuild project."
  value       = module.iam_role.iam_role_policy_name
}
