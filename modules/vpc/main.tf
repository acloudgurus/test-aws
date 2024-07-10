resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "main" {
  count             = length(var.subnet_cidr_blocks)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.subnet_cidr_blocks, count.index)
  availability_zone = element(var.availability_zones, count.index)
}

output "vpc_id" {
  value = aws_vpc.main.id
}
