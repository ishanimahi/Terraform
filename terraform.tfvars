variable "ami"  { 
    type = string
    default = "ami-0ad21ae1d0696ad58"
}
variable "instance_type"{
   type = string
   default = "t2.micro"	
}
variable "az"{
  type= string
  default = "ap-south-1a"
}
variable "key_pair"{
  type = string
  default= "terraform"
}
