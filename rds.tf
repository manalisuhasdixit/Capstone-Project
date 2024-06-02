resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "main-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]

  tags = {
    Name = "main-subnet-group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.id
  multi_az             = true
  publicly_accessible  = false

  tags = {
    Name = "MyDBInstance"
  }
}
