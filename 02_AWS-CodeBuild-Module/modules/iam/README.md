# AWS IAM Role and Policy Terraform Module

## Features
- [x] Create IAM Role for codebuild
- [x] Create IAM Policy for codebuild

## Usage
```
module "iam_role" {
  source = "./modules/iam"

  iam_role_name = var.iam_role_name
}
```

## Variables
| Variable          | Description                   | Type      | Default   |
|-------------------|-------------------------------|-----------|-----------|
| `iam_role_name`   | IAM role name for codebuild.  | `string`  |           |

## Outputs
| Output            | Description                       |
|-------------------|-----------------------------------|
| `iam_role_arn`    | IAM role Amazon Resource Name.    |
| ``    | .    |
| ``    | .    |
