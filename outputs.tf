# outputs.tf
output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id_a" {
  value = aws_subnet.public_subnet_a.id
}

output "public_subnet_id_b" {
  value = aws_subnet.public_subnet_b.id
}

output "private_subnet_id_a" {
  value = aws_subnet.private_subnet_a.id
}

output "private_subnet_id_b" {
  value = aws_subnet.private_subnet_b.id
}

output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "db_endpoint" {
  value = aws_db_instance.default.endpoint
}