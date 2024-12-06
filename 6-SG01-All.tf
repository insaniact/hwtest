
resource "aws_security_group" "tokyo-app1-tg01-sg01" {
  name        = "tokyo-app1-tg01-sg01"
  description = "tokyo-app1-tg01-sg01"
  vpc_id      = aws_vpc.tokyo-app1.id

  ingress {
    description = "MyHomePage"
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

  tags = {
    Name    = "tokyo-app1-tg01-sg01"
    Service = "application1"
    Owner   = "Darknesses"
  }

}





resource "aws_security_group" "tokyo-app1-lb01-sg01" {
  name        = "tokyo-app1-lb01-sg01"
  description = "tokyo-app1-lb01-sg01"
  vpc_id      = aws_vpc.tokyo-app1.id

  ingress {
    description = "MyHomePage"
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

  tags = {
    Name    = "tokyo-app1-lb01-sg01"
    Service = "application1"
    Owner   = "Darknesses"
  }

}