# RDS Instance
resource "aws_db_instance" "main_db" {
  allocated_storage = 20
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = "maindb"
  username = "admin"
  password = "password123"
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = ["sg-123456"]
  tags = {
    Name = "MainDB"
  }
}

# DB Subnet Group
resource "aws_db_subnet_group" "main" {
  name = "main-db-subnet-group"
  subnet_ids = [aws_subnet.private.id]
}

# S3 Bucket
resource "aws_s3_bucket" "data_storage" {
  bucket = "my-data-storage"
  acl = "private"
  tags = {
    Name = "DataStorage"
  }
}

# IAM Role
resource "aws_iam_role" "ec2_role" {
  name = "EC2Role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Principal = {"Service": "ec2.amazonaws.com"},
      Effect = "Allow",
      Sid = ""
    }]
  })
  tags = {
    Name = "EC2Role"
  }
}
