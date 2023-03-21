# creating route table for pub subnet
resource "aws_route_table" "route_table_pub" {
  vpc_id = aws_vpc.vpc.id
}

# creating route table for pvt
resource "aws_route_table" "route_table_pvt" {
  vpc_id = aws_vpc.vpc.id
}