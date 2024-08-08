variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami" {
  description = "AMI ID"
  default     = "ami-0ad21ae1d0696ad58"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "az" {
  description = "Availability Zone"
  default     = "ap-south-1a"
}

variable "key_pair" {
  description = "Key pair name"
  default     = "terraform-project"
}

variable "instance1sg" {
  description = "Security group name for instance1"
  default     = "instance1_security_group"
}

variable "instance2sg" {
  description = "Security group name for instance2"
  default     = "instance2_security_group"
}

variable "tcp_description" {
  description = "Description for TCP ingress rule"
  default     = "Allow TCP traffic"
}

variable "tcp_from_port" {
  description = "From port for TCP ingress rule"
  default     = 80
}

variable "tcp_to_port" {
  description = "To port for TCP ingress rule"
  default     = 80
}

variable "ssh_description" {
  description = "Description for SSH ingress rule"
  default     = "Allow SSH traffic"
}

variable "ssh_from_port" {
  description = "From port for SSH ingress rule"
  default     = 22
}

variable "ssh_to_port" {
  description = "To port for SSH ingress rule"
  default     = 22
}
