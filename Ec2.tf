resource "aws_key_pair" "name" {
    key_name   = "terra-key"
    public_key = file("C:\\Users\\Shree\\OneDrive\\Desktop\\Terraform\\terra-key.pub")
  
}

resource "aws_default_vpc" "default" {
    tags = {
        Name = "Default VPC"
    }
}

resource "aws_security_group" "my_security_group" {

    name="automate-sg"
    description = "security group for ec2 instance"
    vpc_id = aws_default_vpc.default.id

    #inbound rules
      ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "allow SSH access from anywhere"
      }

        ingress {
            from_port   = 80
            to_port     = 80
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "allow HTTP access from anywhere"
        }

        egress {
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            cidr_blocks = ["0.0.0.0/0"]
            description = "allow all outbound traffic"

        }

}

resource "aws_instance" "my_instance" {
 
 depends_on = [aws_security_group.my_security_group]

    ami          = "ami-06a974f9b8a97ecf2" # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type = "t2.micro"
    key_name      = aws_key_pair.name.key_name
    security_groups = [aws_security_group.my_security_group.name]

    tags = {
        Name = "MyEC2Instance"
    }

   
 }
