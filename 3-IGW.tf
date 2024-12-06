resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.tokyo-app1.id

  tags = {
    Name    = "tokyo-app1_IG"
    Service = "application1"
    Owner   = "Darknesses"  }
}
