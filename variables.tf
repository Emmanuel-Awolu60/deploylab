variable "aws_region"{
    description = "AWS region to deploy resources into"
    type        = string
    default     = "us-east-1"   
}

variable "project_name"{
    description = "Name prefix used for all resources"
    type        = string
    default     = "deploylab"
}

variable "vpc_cidr"{
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}

variable "subnet_cidr"{
    description = "CIDR block for the public subnet"
    type        = string
    default     = "10.0.1.0/24"
}

variable "ami_id"{
    description = "AMI ID for the EC2 instance (Amazon Linux 2)"
    type        = string
    default     =  "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        Name = "${var.project_name}-vpc"
        Project = var.project_name
    }
}