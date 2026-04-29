
resource "aws_instance" "my_instance" {
    count        = var.instance_count
    ami          = var.my-ami
    instance_type = var.my-instance-type
    tags = {
        Name = "${var.my-env}-MyEC2Instance"
    }

   
 }
