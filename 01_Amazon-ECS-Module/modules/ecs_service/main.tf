resource "aws_ecs_service" "main" {
  name            = "${var.service_name}-ecs-service"
  cluster         = var.cluster_id
  task_definition = var.task_definition_arn
  desired_count   = var.desired_capacity
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = var.security_group_ids
    subnets          = var.subnet_ids
    assign_public_ip = true
  }

  lifecycle {
    ignore_changes = [task_definition]
  }
}
