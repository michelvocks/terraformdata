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