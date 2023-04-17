variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.1.0/16"
  
}

variable "ENV2" {default=""}
 
variable "ENV3" {
  description = "env"
  type        = string
  default     = "kk"
  
}

variable "ec2_name" {

   type        = string
  default     = ""
  
}

variable "ENV1" {
  type = map

  default = {
    
  }

}


variable "webhostnames" {
  type = map

  default = {
   
  }

}