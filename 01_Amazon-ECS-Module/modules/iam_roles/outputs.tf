output "ecs_task_execution_role_arn" {
  description = "ECS Task Execution Role Amazon Resource Name"
  value       = aws_iam_role.ecs_task_execution_role.arn
}

output "ecs_task_role_arn" {
  description = "ECS Task Role Amazon Resource Name"
  value       = aws_iam_role.ecs_task_role.arn
}
