variable "service_name" {
  description = "Service Name"
  type        = string
}

variable "cluster_id" {
  description = "Cluster ID"
  type        = string
}

variable "task_definition_arn" {
  description = "ECS Task Definition Amazon Resource Name"
  type        = string
}

variable "desired_capacity" {
  description = "Desired Capacity"
  type        = number
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security Group IDs"
  type        = list(string)
}

variable "container_port" {
  description = "Container Port"
  type        = number
}
