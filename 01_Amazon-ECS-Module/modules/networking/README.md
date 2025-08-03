# Networking (VPC, Subnet and Security Group) Terraform Module

## Features
- [x] Use VPC existing (default)
- [x] Use Subnet existing from VPC
- [x] Create Security Group for ECS

## Usage
```
module "networking" {
  source = "./modules/networking"

  service_name = var.service_name
}
```

## Variables
| Variable              | Description                               | Type              | Default   |
|-----------------------|-------------------------------------------|-------------------|-----------|
| `service_name`        | Service name.                             | `string`          |           |

## Outputs
| Output                    | Description                       |
|---------------------------|-----------------------------------|
| `vpc_id`                  | VPC id from existing (default).   |
| `subnet_ids`              | Subnet id from VPC existing.      |
| `ecs_security_group_id`   | ECS security group id.            |
