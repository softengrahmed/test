output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "web_instance_id" {
  value = aws_instance.web.id
}

output "db_instance_id" {
  value = aws_db_instance.db.id
}

output "elb_dns_name" {
  value = aws_elb.main.dns_name
}
