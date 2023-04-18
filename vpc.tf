resource "aws_vpc" "MMDVPC" {
  cidr_block = var.vpc_cidr_block
enable_dns_support = true
instance_tenancy = "default"
 
}

resource "aws_subnet" "frontend" {
  vpc_id     = aws_vpc.MMDVPC.id
  cidr_block = "10.0.2.0/24"
  availability_zone_id="euw2-az1"
  map_public_ip_on_launch = "true"

 tags = {
    Name = "frontend"
  }

}
 


resource "aws_internet_gateway" "mmdigw"{

vpc_id=aws_vpc.MMDVPC.id
}


resource "aws_security_group" "allow_tls-mmd" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.MMDVPC.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}


output "subnet_idid" {
  value = aws_subnet.frontend.id
}
