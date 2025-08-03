# AWS CodeBuild Module

## Features
- [x] Create AWS CodeBuild

## Usage
- Create `terraform.tfvars` for configuration
- Set up the following variables below

```
profile = "default"

project_name  = "install-bun"
github_owner  = "oneutron"
github_repo   = "terraform-aws-codebuild"
github_branch = "main"
bun_version   = "1.2.12"

compute_type = "BUILD_GENERAL1_SMALL"
image_name   = "aws/codebuild/standard:7.0"

```

## Variables
| Variable          | Description               | Type      | Default                           |
|-------------------|---------------------------|-----------|-------------------------------|
| `profile`         | AWS profile.              | `string`  |                               |
| `project_name`    | Project name.             | `string`  |                               |
| `github_owner`    | Github owner.             | `string`  |                               |
| `github_repo`     | Github repository name.   | `string`  |                               |
| `github_branch`   | Github branch.            | `string`  |                               |
| `bun_version`     | Bun version.              | `string`  |                               |
| `compute_type`    | Compute type.             | `string`  | `BUILD_GENERAL1_SMALL`        |
| `image_name`      | Image name.               | `string`  | `aws/codebuild/standard:6.0`  |

## Outputs
| Output                | Description                   |
|-----------------------|-------------------------------|
| `codebuild_project_name`  | Codebuild project name.   |
| `iam_role_name`           | IAM role name.            |
| `iam_role_policy_name`    | IAM role policy name.     |
