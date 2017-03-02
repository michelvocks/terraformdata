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

##### CIDR outputs #####
output "web_eu_central_1a_cidr" {
  value = "${data.aws_subnet.web_eu_central_1a.cidr_block}"
}

output "web_eu_central_1b_cidr" {
  value = "${data.aws_subnet.web_eu_central_1b.cidr_block}"
}
