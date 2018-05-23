##### ID outputs #####
output "vpc_id" {
  value = "${data.aws_vpc.vpc.id}"
}

output "web_eu_central_1a_id" {
  value = "${data.aws_subnet.web_eu_central_1a.id}"
}

output "web_eu_central_1b_id" {
  value = "${data.aws_subnet.web_eu_central_1b.id}"
}

output "app_eu_central_1a_id" {
  value = "${data.aws_subnet.app_eu_central_1a.id}"
}

output "app_eu_central_1b_id" {
  value = "${data.aws_subnet.app_eu_central_1b.id}"
}

output "db_eu_central_1a_id" {
  value = "${data.aws_subnet.db_eu_central_1a.id}"
}

output "db_eu_central_1b_id" {
  value = "${data.aws_subnet.db_eu_central_1b.id}"
}

output "elb_eu_central_1a_id" {
  value = "${data.aws_subnet.elb_eu_central_1a.id}"
}

output "elb_eu_central_1b_id" {
  value = "${data.aws_subnet.elb_eu_central_1b.id}"
}

output "base_ami_id" {
  value = "${data.aws_ami.base_ami.id}"
}

output "base_ami_linux_id" {
  value = "${data.aws_ami.base_ami_linux.id}"
}

##### CIDR outputs #####
output "web_eu_central_1a_cidr" {
  value = "${data.aws_subnet.web_eu_central_1a.cidr_block}"
}

output "web_eu_central_1b_cidr" {
  value = "${data.aws_subnet.web_eu_central_1b.cidr_block}"
}

output "app_eu_central_1a_cidr" {
  value = "${data.aws_subnet.app_eu_central_1a.cidr_block}"
}

output "app_eu_central_1b_cidr" {
  value = "${data.aws_subnet.app_eu_central_1b.cidr_block}"
}

output "db_eu_central_1a_cidr" {
  value = "${data.aws_subnet.db_eu_central_1a.cidr_block}"
}

output "db_eu_central_1b_cidr" {
  value = "${data.aws_subnet.db_eu_central_1b.cidr_block}"
}

output "elb_eu_central_1b_cidr" {
  value = "${data.aws_subnet.elb_eu_central_1b.cidr_block}"
}

output "elb_eu_central_1a_cidr" {
  value = "${data.aws_subnet.elb_eu_central_1a.cidr_block}"
}

output "tools_app_eu_central_1a_cidr" {
  value = "${data.aws_subnet.tools_app_eu_central_1a.cidr_block}"
}

output "tools_app_eu_central_1b_cidr" {
  value = "${data.aws_subnet.tools_app_eu_central_1b.cidr_block}"
}

output "tools_web_eu_central_1a_cidr" {
  value = "${data.aws_subnet.tools_web_eu_central_1a.cidr_block}"
}

output "tools_web_eu_central_1b_cidr" {
  value = "${data.aws_subnet.tools_web_eu_central_1b.cidr_block}"
}
