##################################################
# Existing ECS Cluster
##################################################

data "aws_ecs_cluster" "ecs_lab" {
  cluster_name = "ecs-lab"
}

##################################################
# Existing Task Definition
##################################################

data "aws_ecs_task_definition" "payload" {
  task_definition = "ecs-cicd-lab"
}

##################################################
# Existing ECS Service
##################################################

data "aws_ecs_service" "payload" {
  service_name = "ecs-cicd-lab-service"
  cluster_arn  = data.aws_ecs_cluster.ecs_lab.arn
}
