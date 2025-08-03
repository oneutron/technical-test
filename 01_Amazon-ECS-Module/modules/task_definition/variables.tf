variable "region" {
  description = "AWS Region"
  type        = string
}

variable "service_name" {
  description = "Service Name"
  type        = string
}

variable "container_image" {
  description = "Container Image"
  type        = string
}

variable "container_port" {
  description = "Container Port"
  type        = number
}

variable "cpu_reservation" {
  description = "CPU Reservation for Container"
  type        = number
}

variable "memory_reservation" {
  description = "Memory Reservation for Container"
  type        = number
}

variable "ecs_task_execution_role_arn" {
  description = "ECS task execution IAM role Amazon Resource Name"
  type        = string
}
