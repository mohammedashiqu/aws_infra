variable "ami" {
  default = "ami-005f9685cb30f234b"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "pub_ec2_tag" {
  default = "terraform VM"
}
variable "pvt_ec2_tag" {
  default = "terraform VM"
}
variable "route_table_route" {
  default = "0.0.0.0/0"
}
variable "pub_subnet_cidr_block" {
  default = "10.0.0.0/24"
}
variable "pub_subnet_availability_zone" {
  default = "us-east-1a"
}
variable "pvt_subnet_cidr_block" {
  default = "10.0.0128/24"
}
variable "pvt_subnet_availability_zone" {
  default = "us-east-1b"
}
variable "vpc_cidr" {
  default = "10.0.0.0/24"
}
variable "vpc_name" {
  default = "my_terraform_vpc"
}
