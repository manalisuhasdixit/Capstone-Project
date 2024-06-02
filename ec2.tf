resource "aws_instance" "web" {
  ami           = "ami-0eb9d67c52f5c80e5" # Change to your preferred AMI
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet_a.id
  security_groups = [aws_security_group.web_sg.id]
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd php php-mysqlnd
              wget http://wordpress.org/latest.tar.gz
              tar -xzvf latest.tar.gz
              rsync -avP wordpress/ /var/www/html/
              chown -R apache:apache /var/www/html/
              chmod -R 755 /var/www/html/
              systemctl enable httpd
              systemctl start httpd
              EOF

  tags = {
    Name = "WordPressServer"
  }
}
