# EC2 Instances
resource "aws_instance" "app_server" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  key_name = "my-key"
  security_groups = ["sg-123456"]
  associate_public_ip_address = true
  tags = {
    Name = "AppServer"
  }
}

# Elastic Load Balancer
resource "aws_elb" "main" {
  name = "main-elb"
  availability_zones = ["us-east-1a", "us-east-1b"]
  listener {
    instance_port = 80
    instance_protocol = "HTTP"
    lb_port = 80
    lb_protocol = "HTTP"
  }
  health_check {
    target = "HTTP:80/"
    interval = 30
    timeout = 5
    unhealthy_threshold = 2
    healthy_threshold = 10
  }
  instances = [aws_instance.app_server.id]
  tags = {
    Name = "MainELB"
  }
}

# Auto Scaling Group
resource "aws_autoscaling_group" "app" {
  launch_configuration = aws_launch_configuration.app.id
  min_size = 1
  max_size = 3
  desired_capacity = 2
  vpc_zone_identifier = [aws_subnet.public.id]
  tag {
    key = "Name"
    value = "AppAutoScalingGroup"
    propagate_at_launch = true
  }
}

# Launch Configuration
resource "aws_launch_configuration" "app" {
  name = "app-launch-configuration"
  image_id = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  security_groups = ["sg-123456"]
  key_name = "my-key"
}
