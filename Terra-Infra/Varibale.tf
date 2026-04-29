variable "my-env"{
    description = "Environment name"
    type        = string
}

variable "my-ami" {
    description = "AMI ID for EC2 instance"
    type        = string
}

variable "my-instance-type" {
    description = "EC2 instance type"
    type        = string
}

variable "instance_count" {
    description = "Number of EC2 instances to create"
    type        = number
}