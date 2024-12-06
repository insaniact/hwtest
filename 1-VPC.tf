# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "tokyo-app1" {
  cidr_block = "10.35.0.0/16"
  
  tags = {
    Name = "tokyo-app1"
    Service = "application1"
    Owner = "Darknesses"
  }
}
