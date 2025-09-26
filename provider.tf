provider "aws" {"
region = "${var.aws_region}"
assume_role {
    role_arn     = "arn:aws:iam::123456789012:role/SL-ROL-instance-role" 
    session_name = "terraform-session"
  }
