variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "iam_role_arn" {
  description = "IAM Role Amazon Resource Name"
  type        = string
}

variable "github_owner" {
  description = "GitHub Repository Owner"
  type        = string
}

variable "github_repo" {
  description = "GitHub Repository Name"
  type        = string
}

variable "source_version" {
  description = "GitHub Release Tag (e.g. '1.0.0') or Branch Main"
  type        = string
}

variable "compute_type" {
  description = "Compute Type"
  type        = string
}

variable "image_name" {
  description = "The Docker Image Name"
  type        = string
}

variable "bun_version" {
  description = "Bun Version"
  type        = string
}
