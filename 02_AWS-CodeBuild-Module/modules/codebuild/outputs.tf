output "codebuild_project_arn" {
  description = "CodeBuild Project Amazon Resource Name"
  value       = aws_codebuild_project.main.arn
}

output "codebuild_project_name" {
  description = "CodeBuild Project Name"
  value       = aws_codebuild_project.main.name
}
