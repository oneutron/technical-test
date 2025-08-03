# AWS ECS Cluster Terraform Module

## Features
- [x] Create ECS cluster

## Usage
```tf
module "ecs_cluster" {
  source = "./modules/ecs_cluster"

  cluster_name = var.cluster_name
}
```

## Variables
| Variable          | Description   | Type      | Default   |
|-------------------|---------------|-----------|-----------|
| `cluster_name`    | Cluster name. | `string`  |           |

## Outputs
| Output            | Description   |
|-------------------|---------------|
| `cluster_id`      | Cluster id.   |
| `cluster_name`    | Cluster name. |
