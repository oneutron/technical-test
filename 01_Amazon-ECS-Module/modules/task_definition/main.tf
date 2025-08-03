resource "aws_ecs_task_definition" "main" {
  family                   = "${var.service_name}-task-definition"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.cpu_reservation
  memory                   = var.memory_reservation
  execution_role_arn       = var.ecs_task_execution_role_arn

  container_definitions = jsonencode([
    {
      name      = var.service_name
      image     = var.container_image
      cpu       = var.cpu_reservation
      memory    = var.memory_reservation
      essential = true
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.container_port
        },
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = aws_cloudwatch_log_group.main.name
          "awslogs-region"        = var.region
          "awslogs-stream-prefix" = "ecs"
        }
      }
      healthCheck = {
        command     = ["CMD-SHELL", "wget --no-verbose --tries=1 --spider http://localhost:${var.container_port} || exit 1"]
        interval    = 30
        timeout     = 5
        retries     = 3
        startPeriod = 60
      }
    },
  ])
}

resource "aws_cloudwatch_log_group" "main" {
  name = "/ecs/${var.service_name}"
}
