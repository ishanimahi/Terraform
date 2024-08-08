terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "instance1" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.az
  key_name          = var.key_pair
  vpc_security_group_ids = [aws_security_group.instance1sg.id]
}

resource "aws_security_group" "instance1sg" {
  name = var.instance1sg
  
  ingress {
    description = var.tcp_description
    from_port   = var.tcp_from_port
    to_port     = var.tcp_to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    description = var.ssh_description
    from_port   = var.ssh_from_port
    to_port     = var.ssh_to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
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
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.az
  key_name          = var.key_pair
  vpc_security_group_ids = [aws_security_group.instance2sg.id]
}

resource "aws_security_group" "instance2sg" {
  name = var.instance2sg
    
  ingress {
    description = var.tcp_description
    from_port   = var.tcp_from_port
    to_port     = var.tcp_to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    description = var.ssh_description
    from_port   = var.ssh_from_port
    to_port     = var.ssh_to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
