data "aws_security_group" "default" {
  id = "sg-0c667c59d0e6479a9"
}

data "aws_security_group" "launch_wizard_2" {
  id = "sg-053e255921111625e"
}

data "aws_security_group" "alb" {
  id = "sg-05825ca9c9641b7e9"
}
