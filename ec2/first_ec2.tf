provider "aws" {
    region = "us-east-1"
    access_key = "ACCESS_KEY"
    secret_key = "SECRET_KEY"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-084568db4383264d4"
    instance_type = "t2.micro"

    tags = {
        Name = "Escanor_Ubuntu"
    }
}