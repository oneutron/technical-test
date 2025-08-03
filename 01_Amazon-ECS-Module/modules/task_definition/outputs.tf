output "task_definition_arn" {
  description = "ECS Task Definition Amazon Resource Name"
  value       = aws_ecs_task_definition.main.arn
}
