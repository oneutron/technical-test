variable "profile" {
  description = "AWS Profile"
  type        = string
}

variable "project_name" {
  description = "Project Name"
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

variable "github_branch" {
  description = "GitHub Branch Name"
  type        = string
}

variable "compute_type" {
  description = "Compute Type"
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
}

variable "image_name" {
  description = "The Docker Image Name"
  type        = string
  default     = "aws/codebuild/standard:6.0"
}

variable "bun_version" {
  description = "Bun Version"
  type        = string
}
