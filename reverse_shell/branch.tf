provider "aws"  {
  region = "${var.region}"
}
resource "aws_subnet" "subnet" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet_cidr}"
  availability_zone = "${var.region}b"
  map_public_ip_on_launch = true
  tags = {
    Name = "tmp_vulnado_rev_shell_subnet"
  }
}
resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  tags = {
    Name = "tmp_vulnado_rev_shell_vpc"
  }
}
