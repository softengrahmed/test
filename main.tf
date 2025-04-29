provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  provider = aws.us-east-1
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  provider = aws.us-east-1
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_subnet" {
  provider = aws.us-east-1
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
}

resource "aws_security_group" "web_sg" {
  provider = aws.us-east-1
  vpc_id = aws_vpc.main.id

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

resource "aws_instance" "web" {
  provider = aws.us-east-1
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.web_sg.name]
}

resource "aws_db_instance" "db" {
  provider = aws.us-east-1
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
}

resource "aws_db_subnet_group" "db_subnet_group" {
  provider = aws.us-east-1
  name       = "db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet.id]
}

resource "aws_s3_bucket" "logs" {
  provider = aws.us-west-2
  bucket = "my-log-bucket"
  acl    = "private"
}

resource "aws_lambda_function" "my_lambda" {
  provider = aws.us-west-2
  function_name = "my_lambda_function"
  handler       = "index.handler"
  runtime       = "nodejs12.x"
  role          = aws_iam_role.lambda_exec.arn
  s3_bucket     = aws_s3_bucket.logs.bucket
  s3_key        = "lambda_function.zip"
}

resource "aws_iam_role" "lambda_exec" {
  provider = aws.us-west-2
  name = "lambda_exec_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  provider = aws.us-west-2
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
