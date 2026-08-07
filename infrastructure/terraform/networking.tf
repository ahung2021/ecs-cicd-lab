##################################################
# Existing VPC
##################################################

data "aws_vpc" "current" {
  id = "vpc-033cb94ab20aa88b5"
}

##################################################
# Existing Subnets
##################################################

data "aws_subnet" "subnet_a" {
  id = "subnet-0afe337d288a99e46"
}

data "aws_subnet" "subnet_b" {
  id = "subnet-0cc1568a52bfc2a64"
}

data "aws_subnet" "subnet_c" {
  id = "subnet-02e32b1097f9cce4a"
}

data "aws_subnet" "subnet_d" {
  id = "subnet-05aac909751abb12e"
}

data "aws_subnet" "subnet_e" {
  id = "subnet-08bc3d2959bd51e0c"
}

data "aws_subnet" "subnet_f" {
  id = "subnet-0fb44f9d4034ef09d"
}
