variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  # default     = "10.0.0.0/16"
default     = ""
  
}

variable "ENV2" {default=""}

variable "AWS_ACCESS_KEY_ID" {default="AKIA5BBQL4PJG5R5E67D"}
variable "AWS_SECRET_ACCESS_KEY" {default="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"}
 
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
