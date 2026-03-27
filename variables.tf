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