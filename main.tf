provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials

}

resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true

    tags = {
        Name = "VPC190820"
    }

}

resource "aws_subnet "subnet_a" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.sn_cidr_block
    availability_zone = data.aws_availability_zones.available.names[0]
    tags = {
        Name = ""
    }
}
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance
  key_name      = var.key
}