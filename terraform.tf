variable "ami"  { 
    type = string
    default = "ami-0ad21ae1d0696ad58"
}
variable "int_type"{
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
variable "tcp.description"{
  type = string
  default= "TCP Security group"
}
variable "tcp_from_port"{
  type = number
  default= "80"
}
variable "tcp_to_port"{
  type = number
  default= "80"
}
variable "ssh.description"{
  type = string
  default= "TCP Security group"
}
variable "ssh_from_port"{
  type = number
  default= "80"
}
variable "ssh_to_port"{
  type = number
  default= "80"
}

