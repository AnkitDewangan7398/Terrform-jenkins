variable "vpc_name" {
type = string
description = "Name of the VPC"
#default = "MyPublicVPC"
}

variable "vpc_cidr" {
type = string
description = "CIDR block for the VPC"
#default = "10.10.0.0/16"
}

variable "public_subnet_cidrs" {
type = list(string)
description = "List of public subnet CIDRs"
#default = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

variable "az_s" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b" ,"us-east-1c"]
}

