resource "aws_codebuild_project" "main" {
  name            = "${var.project_name}-project"
  service_role    = var.iam_role_arn
  source_version  = var.source_version
  build_timeout   = 5
  tags = {
    Name      = "${var.project_name}-project"
    ManagedBy = "Terraform"
  }

  source {
    type            = "GITHUB"
    location        = "https://github.com/${var.github_owner}/${var.github_repo}.git"
    git_clone_depth = 1
    buildspec       = "buildspec.yml"
  }

  environment {
    compute_type                = var.compute_type
    image                       = var.image_name
    type                        = "LINUX_CONTAINER"
    privileged_mode             = false
    image_pull_credentials_type = "CODEBUILD"
    environment_variable {
      name  = "BUN_VERSION"
      value = var.bun_version
    }
  }

  artifacts {
    type = "NO_ARTIFACTS"
  }

  cache {
    type = "NO_CACHE"
  }
}

resource "aws_codebuild_webhook" "main" {
  project_name = aws_codebuild_project.main.name
  build_type   = "BUILD"

  filter_group {
    filter {
      type    = "EVENT"
      pattern = "RELEASED"
    }

    filter {
      type    = "TAG_NAME"
      pattern = "[0-9]+\\.[0-9]+\\.[0-9]+"
    }
  }
}
