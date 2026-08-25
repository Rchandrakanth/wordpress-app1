

resource "aws_instance" "myinstance1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #   availability_zone           = var.public_availability_zone
  #   subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [aws_security_group.public_sg.id]
  associate_public_ip_address = true
  key_name                    = var.instance_mykey

  tags = {
    Name = var.instance_name
  }
}




resource "aws_security_group" "public_sg" {
  description = "security group for public"


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
