terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
  }
  provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "instance1" {
    ami           = "ami"
    instance_type = "int-type"
    availability_zone = "az"
  }
  resource "aws_security_group" "instance1sg"{
    name = "instance1_security_ group"
    ingress {
        description     = "HTTP from world"
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]        
    }
    ingress {
        description     = "SSH  from world"
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]        
    }
      egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "instance2" {
    ami           = "ami"
    instance_type = "int-type"
    availability_zone = "az"
}
  resource "aws_security_group" "instance2sg"{
    description = "instance2_security_group"
    name = "instance2sg"
    ingress {
        description     = "HTTP from world"
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]        
    }
    ingress {
        description     = "SSH  from world"
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]        
    }
      egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
