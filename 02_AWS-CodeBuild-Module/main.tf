module "iam_role" {
  source = "./modules/iam"

  project_name = var.project_name
}

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
