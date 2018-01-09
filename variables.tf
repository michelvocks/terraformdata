variable "aws_tags" {
  type        = "map"
  description = "Map of standard aws tags assigned to all aws resources"
}

variable "np_tools_vpc_name" {
  default = "toolbox"
}

variable "pr_tools_vpc_name" {
  default = "management"
}

variable "np_tools_vpc_stage" {
  default = "toolbox-np"
}

variable "pr_tools_vpc_stage" {
  default = "management-pr"
}

variable "np_tools_vpc_subnets" {
  default = "toolbox-np"
}

variable "pr_tools_vpc_subnets" {
  default = "management-pr"
}