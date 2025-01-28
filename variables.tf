# Variables for Terraform AWS configuration

variable "region_east" {
  description = "Primary AWS region"
  default     = "us-east-1"
}

variable "region_west" {
  description = "Secondary AWS region"
  default     = "us-west-2"
}
