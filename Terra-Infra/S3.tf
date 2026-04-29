resource "aws_s3_bucket" "my_bucket" {

    bucket = "${var.my-env}-my-terraform-bucket-143"
    
}  