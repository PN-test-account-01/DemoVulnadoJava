variable "public_key" {
  description = "Public SSH key to allow you to login to the new instance. e.g. cat ~/.ssh/id_rsa.pub"
}

variable "region" {
  default = "us-west-1"
}

variable "vpc_cidr" {
  default = "10.42.0.0/16"
}

variable "subnet_cidr" {
  default = "10.42.0.0/24"
}
resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  tags = {
    Name = "tmp_vulnado_rev_shell_vpc"
  }
}
