provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "awssg" {
    name = "tf-firewall"
    description = "new firewall for ubuntu server"
}

resource "aws_vpc_security_group_ingress_rule" "allow_ipv4" {
    security_group_id = aws_security_group.awssg.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "tcp"
    from_port = 80
    to_port = 100
}

resource "aws_vpc_security_group_egress_rule" "allow_all_ipv4" {
    security_group_id = aws_security_group.awssg.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "-1"
}