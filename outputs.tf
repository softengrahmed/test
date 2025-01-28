# Output variables for Terraform AWS configuration

output "east_vpc_id" {
  value = aws_vpc.east_vpc.id
  description = "VPC ID for the primary region"
}

output "west_vpc_id" {
  value = aws_vpc.west_vpc.id
  description = "VPC ID for the secondary region"
}
