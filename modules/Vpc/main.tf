

resource "aws_vpc" "main" {
cidr_block = "${var.vpc_cidr}"
tags = {
Name = "${var.vpc_name}"
}
}

# Public Subnets
resource "aws_subnet" "public" {
count = length("${var.public_subnet_cidrs}")
cidr_block = "${var.public_subnet_cidrs[count.index]}"
vpc_id = aws_vpc.main.id
availability_zone = "${var.az_s[count.index]}"
map_public_ip_on_launch = true

#availability_zone = "us-east-1a" # You can modify this or pass it as a variable

tags = {
Name = "${var.vpc_name}-public-${count.index + 1}"
}
}