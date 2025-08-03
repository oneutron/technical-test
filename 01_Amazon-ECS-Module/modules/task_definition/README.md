# AWS ECS Task Definition Terraform Module

## Features
- [x] Create ECS task definition
- [x] Create AWS cloudwatch log group

## Usage
```
module "task_definition" {
  source = "./modules/task_definition"

  region                      = var.region
  service_name                = var.service_name
  container_image             = var.container_image
  container_port              = var.container_port
  cpu_reservation             = var.cpu_reservation
  memory_reservation          = var.memory_reservation
  ecs_task_execution_role_arn = module.iam_roles.ecs_task_execution_role_arn
}
```

## Variables
| Variable                      | Description                   | Type              | Default   |
|-------------------------------|-------------------------------|-------------------|-----------|
| `region`                      | AWS region.                   | `string`          |           |
| `service_name`                | Service name.                 | `string`          |           |
| `container_image`             | Container image.              | `string`          |           |
| `container_port`              | Container port.               | `number`          |           |
| `cpu_reservation`             | CPU resource.                 | `number`          |           |
| `memory_reservation`          | Memory resource.              | `number`          |           |
| `ecs_task_execution_role_arn` | Depends on iam roles module.  | `string`          |           |

## Outputs
| Output                | Description                               |
|-----------------------|-------------------------------------------|
| `task_definition_arn` | ECS task definition Amazon Resource Name. |
