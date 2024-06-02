resource "aws_instance" "bastion" {
  ami           = "ami-0eb9d67c52f5c80e5" # Change to your preferred AMI
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet_b.id
  security_groups = [aws_security_group.web_sg.id]

  tags = {
    Name = "BastionHost"
  }
}
