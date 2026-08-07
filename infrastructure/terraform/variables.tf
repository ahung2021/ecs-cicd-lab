variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "cpu" {
  description = "CPU units for ECS Task"
  type        = number
}

variable "memory" {
  description = "Memory for ECS Task"
  type        = number
}

variable "desired_count" {
  description = "Number of ECS Tasks"
  type        = number
}

variable "container_port" {
  description = "Application Port"
  type        = number
}
