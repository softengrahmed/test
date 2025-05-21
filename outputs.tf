output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public.*.id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private.*.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.main.id
}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.main.id
}

output "ec2_instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.web.*.id
}

output "rds_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.main.id
}