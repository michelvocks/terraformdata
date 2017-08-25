data "aws_vpc" "vpc" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-vpc",
    ]
  }
}

data "aws_vpc" "vpc_tools" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["stage"] == "np" ? var.np_tools_vpc_stage : var.pr_tools_vpc_stage}-vpc",
    ]
  }
}

data "aws_subnet" "web_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-web-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "web_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-web-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "app_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-app-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "app_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-app-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "db_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-db-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "db_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-db-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "elb_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-elb-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "elb_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["topic"]}-${var.aws_tags["stage"]}-sn-elb-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc.id}"
}

data "aws_subnet" "tools_app_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["stage"] == "np" ? var.np_tools_vpc_subnets : var.pr_tools_vpc_subnets}-sn-app-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc_tools.id}"
}

data "aws_subnet" "tools_app_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["stage"] == "np" ? var.np_tools_vpc_subnets : var.pr_tools_vpc_subnets}-sn-app-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc_tools.id}"
}

data "aws_subnet" "tools_web_eu_central_1a" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["stage"] == "np" ? var.np_tools_vpc_subnets : var.pr_tools_vpc_subnets}-sn-web-euc1a",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc_tools.id}"
}

data "aws_subnet" "tools_web_eu_central_1b" {
  filter {
    name = "tag:Name"

    values = [
      "${var.aws_tags["stage"] == "np" ? var.np_tools_vpc_subnets : var.pr_tools_vpc_subnets}-sn-web-euc1b",
    ]
  }

  vpc_id = "${data.aws_vpc.vpc_tools.id}"
}

data "aws_ami" "base_ami" {
  most_recent = true
  owners      = ["self"]
  name_regex  = "dis-ami-base"
}