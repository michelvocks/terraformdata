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
