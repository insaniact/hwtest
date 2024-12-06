
resource "aws_lb_target_group" "tokyo-app1_tg" {
  name     = "tokyo-app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.tokyo-app1.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "tokyo-app1TargetGroup"
    Service = "tokyo-app1"
    Owner   = "Darknesses"
    Project = "Web Service"
  }
}