output "vpc" {
  value = "${data.aws_vpc.vpc}"
}

output "web_eu_central_1a" {
  value = "${data.aws_subnet.web_eu_central_1a}"
}

output "web_eu_central_1b" {
  value = "${data.aws_subnet.web_eu_central_1b}"
}

output "app_eu_central_1a" {
  value = "${data.aws_subnet.app_eu_central_1a}"
}

output "app_eu_central_1b" {
  value = "${data.aws_subnet.app_eu_central_1b}"
}
