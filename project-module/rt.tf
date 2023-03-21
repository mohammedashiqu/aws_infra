# create a route in public route table to igw
resource "aws_route" "pub_route_table_route" {
  route_table_id = aws_route_table.route_table_pub.id
  gateway_id = aws_internet_gateway.igw.id
  destination_cidr_block = var.route_table_route
}
