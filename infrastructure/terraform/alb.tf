##################################################
# Existing Application Load Balancer
##################################################

data "aws_lb" "ecs_lab" {
  arn = "arn:aws:elasticloadbalancing:eu-west-1:638501454103:loadbalancer/app/ecs-lab-alb/e51b73457103f8e0"
}

##################################################
# Existing Target Group
##################################################

data "aws_lb_target_group" "payload" {
  arn = "arn:aws:elasticloadbalancing:eu-west-1:638501454103:targetgroup/ecs-lab-payload-tg/d0a0bbd5f4d0009f"
}

##################################################
# Existing Listener
##################################################

data "aws_lb_listener" "http" {
  arn = "arn:aws:elasticloadbalancing:eu-west-1:638501454103:listener/app/ecs-lab-alb/e51b73457103f8e0/646a622529a05b44"
}
