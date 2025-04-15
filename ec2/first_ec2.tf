provider "aws" {
    region = "us-east-1"
    access_key = "AKIAWP5SUPAXSSCNRPXK"
    secret_key = "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"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-084568db4383264d4"
    instance_type = "t2.micro"

    tags = {
        Name = "Escanor_Ubuntu"
    }
}