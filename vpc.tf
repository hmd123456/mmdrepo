resource "aws_vpc" "MMDVPC" {
  cidr_block = var.vpc_cidr_block
enable_dns_support = true
instance_tenancy = "default"
 
}

