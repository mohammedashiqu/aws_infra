resource "aws_instance" "ec2_public" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.sub_pub.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = "new-cert"
  user_data = file("shell.sh")
  tags = {
    Name = var.pub_ec2_tag
  }
}
resource "aws_instance" "ec2_pvt" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.sub_pvt.id
  key_name = "recovery"
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = var.pvt_ec2_tag
  }
}