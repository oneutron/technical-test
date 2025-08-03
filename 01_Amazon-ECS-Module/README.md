# Amazon ECS (Elastic Container Service) Module

## Features
- [x] Create Amazon ECS cluster
- [x] Create Amazon ECS Task Definition
- [x] Create Amazon ECS Service

## Usage
- Create `terraform.tfvars` for configuration
- Set up the following variables below

```
profile = "default"
region  = "ap-southeast-1"

cluster_name       = "indico"
service_name       = "nginx"
container_image    = "nginx:stable-alpine-slim"
container_port     = 80
cpu_reservation    = 256
memory_reservation = 512
desired_capacity   = 1

```

## Variables
| Variable              | Description       | Type      | Default   |
|-----------------------|-------------------|-----------|-----------|
| `profile`             | AWS profile.      | `string`  |           |
| `region`              | AWS region.       | `string`  |           |
| `cluster_name`        | Cluster name.     | `string`  |           |
| `service_name`        | Service name.     | `string`  |           |
| `container_image`     | Container image.  | `string`  |           |
| `container_port`      | Container port.   | `number`  |           |
| `cpu_reservation`     | CPU resource.     | `number`  | 256       |
| `memory_reservation`  | Memory resource.  | `number`  | 512       |
| `desired_capacity`    | Desired capacity. | `number`  | 1         |

## Outputs
| Output                | Description                               |
|-----------------------|-------------------------------------------|
| `ecs_cluster_name` | ECS cluster name. |
| `ecs_service_name` | ECS service name. |
