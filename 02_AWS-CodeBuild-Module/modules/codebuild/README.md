# AWS Codebuild Terraform Module

## Features
- [x] Create AWS Codebuild Project integrated with GitHub
- [x] Create AWS Codebuild Webhook with a trigger from GitHub with a release tag

## Usage
```
module "codebuild" {
  source = "./modules/codebuild"

  project_name   = var.project_name
  iam_role_arn   = module.iam_role.iam_role_arn
  github_owner   = var.github_owner
  github_repo    = var.github_repo
  source_version = var.github_branch
  compute_type   = var.compute_type
  image_name     = var.image_name
  bun_version    = var.bun_version
}
```

## Variables
| Variable          | Description               | Type      | Default   |
|-------------------|---------------------------|-----------|-----------|
| `project_name`    | Project name.             | `string`  |           |
| `iam_role_arn`    | Depends on iam module.    | `string`  |           |
| `github_owner`    | Github owner.             | `string`  |           |
| `github_repo`     | Github repository.        | `string`  |           |
| `source_version`  | Source version.           | `string`  |           |
| `compute_type`    | Compute type.             | `string`  |           |
| `image_name`      | Image name.               | `string`  |           |
| `bun_version`     | Bun version.              | `string`  |           |

## Outputs
| Output                    | Description                                   |
|---------------------------|-----------------------------------------------|
| `codebuild_project_arn`   | AWS codebuild project Amazon Resource Name.   |
| `codebuild_project_name`  | AWS codebuild project Name.                   |
