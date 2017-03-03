data "aws_vpc" "vpc" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-vpc",
    ]
  }
}

data "aws_subnet" "web_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stageold"]}-sn-web-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "web_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stageold"]}-sn-web-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "app_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stageold"]}-sn-app-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "app_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stageold"]}-sn-app-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_ami" "base_ami" {
  most_recent = true
  owners      = ["self"]
  name_regex  = "dis-ami-base"
}
