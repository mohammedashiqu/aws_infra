# route table association for public subnet and public route table
resource "aws_route_table_association" "pub_route_table_pub_sub_asso" {
  route_table_id = aws_route_table.route_table_pub.id
  subnet_id = aws_subnet.sub_pub.id
}

# route table asociation for private subnet and private route table
resource "aws_route_table_association" "pvt_route_table_pvt_sub_asso" {
  route_table_id = aws_route_table.route_table_pvt.id
  subnet_id = aws_subnet.sub_pvt.id
}