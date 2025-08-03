# AWS IAM Role and Policy Terraform Module

## Features
- [x] Create IAM Role for ECS task execution
- [x] Create IAM Role for ECS task
- [x] Create IAM Policy for ECS task execution

## Usage
```
module "iam_roles" {
  source = "./modules/iam_roles"

  service_name = var.service_name
}
```

## Variables
| Variable              | Description                               | Type              | Default   |
|-----------------------|-------------------------------------------|-------------------|-----------|
| `service_name`        | Service name.                             | `string`          |           |

## Outputs
| Output                        | Description                                   |
|-------------------------------|-----------------------------------------------|
| `ecs_task_execution_role_arn` | ECS task execution role Amazon Resource Name. |
| `ecs_task_role_arn`           | ECS task role Amazon Resource Name.           |
