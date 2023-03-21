
resource "aws_subnet" "sub_pub" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.pub_subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone = var.pub_subnet_availability_zone
}
resource "aws_subnet" "sub_pvt" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.pvt_subnet_cidr_block
  availability_zone = var.pvt_subnet_availability_zone
}