module "networking" {
  source = "./modules/networking"

  service_name = var.service_name
}

module "ecs_cluster" {
  source = "./modules/ecs_cluster"

  cluster_name = var.cluster_name
}

module "iam_roles" {
  source = "./modules/iam_roles"

  service_name = var.service_name
}

module "task_definition" {
  source = "./modules/task_definition"

  region                      = var.region
  service_name                = var.service_name
  container_image             = var.container_image
  container_port              = var.container_port
  cpu_reservation             = var.cpu_reservation
  memory_reservation          = var.memory_reservation
  ecs_task_execution_role_arn = module.iam_roles.ecs_task_execution_role_arn
}

module "ecs_service" {
  source = "./modules/ecs_service"

  service_name        = var.service_name
  cluster_id          = module.ecs_cluster.cluster_id
  task_definition_arn = module.task_definition.task_definition_arn
  desired_capacity    = var.desired_capacity
  vpc_id              = module.networking.vpc_id
  subnet_ids          = module.networking.subnet_ids
  security_group_ids  = [module.networking.ecs_security_group_id]
  container_port      = var.container_port
}
