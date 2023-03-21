module "aws" {
  source                       = "./project-module"
  ami                          = "ami-005f9685cb30f234b"
  instance_type                = "t2.micro"
  pub_ec2_tag                  = "Pub_VM"
  pvt_ec2_tag                  = "Pvt_VM"
  route_table_route            = "0.0.0.0/0"
  pub_subnet_cidr_block        = "10.0.0.0/25"
  pub_subnet_availability_zone = "us-east-1a"
  pvt_subnet_cidr_block        = "10.0.0.128/25"
  pvt_subnet_availability_zone = "us-east-1b"
  vpc_cidr                     = "10.0.0.0/24"
  vpc_name                     = "vpc_Terraform"
}