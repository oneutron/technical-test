# AWS ECS Service Terraform Module

## Features
- [x] Create ECS service from task definition

## Usage
```
module "ecs_service" {
  source = "./modules/ecs_service"

  service_name        = var.service_name
  cluster_id          = module.ecs_cluster.cluster_id
  task_definition_arn = module.task_definition.task_definition_arn
  desired_capacity    = var.desired_capacity
  vpc_id              = module.networking.vpc_id
  subnet_ids          = module.networking.subnet_ids
  security_group_ids  = [module.networking.ecs_security_group_id]
  container_port      = var.container_port
}
```

## Variables
| Variable              | Description                               | Type              | Default   |
|-----------------------|-------------------------------------------|-------------------|-----------|
| `service_name`        | Service name.                             | `string`          |           |
| `cluster_id`          | Depends on ECS cluster module.            | `string`          |           |
| `task_definition_arn` | Depends on ECS task definition module.    | `string`          |           |
| `desired_capacity`    | Desired capacity.                         | `number`          |           |
| `vpc_id`              | Depends on networking module.             | `string`          |           |
| `subnet_ids`          | Depends on networking module.             | `list(string)`    |           |
| `security_group_ids`  | Depends on networking module.             | `list(string)`    |           |
| `container_port`      | Container port.                           | `number`          |           |

## Outputs
| Output            | Description   |
|-------------------|---------------|
| `service_name`    | Service Name. |
