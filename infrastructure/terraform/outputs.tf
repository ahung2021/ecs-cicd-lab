##################################################
# AWS Region
##################################################

output "aws_region" {
  description = "AWS Region"
  value       = var.aws_region
}

##################################################
# Project Name
##################################################

output "project_name" {
  description = "Project Name"
  value       = var.project_name
}

##################################################
# ECR
##################################################

output "ecr_repository_url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.payload.repository_url
}

##################################################
# ECS
##################################################

output "ecs_cluster_name" {
  description = "ECS Cluster Name"
  value       = data.aws_ecs_cluster.ecs_lab.cluster_name
}

output "ecs_service_name" {
  description = "ECS Service Name"
  value       = data.aws_ecs_service.payload.service_name
}

##################################################
# Load Balancer
##################################################

output "alb_dns_name" {
  description = "Application Load Balancer DNS"
  value       = data.aws_lb.ecs_lab.dns_name
}

##################################################
# Target Group
##################################################

output "target_group_arn" {
  description = "Target Group ARN"
  value       = data.aws_lb_target_group.payload.arn
}
