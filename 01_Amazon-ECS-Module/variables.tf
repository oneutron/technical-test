variable "profile" {
  description = "AWS Profile"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "cluster_name" {
  description = "Cluster Name"
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
  description = "Resource CPU"
  type        = number
  default     = 256 # 256 is 0.25 vCPU
}

variable "memory_reservation" {
  description = "Resource Memory"
  type        = number
  default     = 512 # 512 MiB
}

variable "desired_capacity" {
  description = "Desired Count"
  type        = number
  default     = 1
}
