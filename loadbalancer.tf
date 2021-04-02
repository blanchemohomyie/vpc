# Create an application load balancer for the public subnets - internet facing
resource "aws_lb" "publiclb" {
  name               = "publiclb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ext_sg.id]
  subnets            = [aws_subnet.pub1.id, aws_subnet.pub2.id]
 

 
  tags = {
    Name = "publiclb"
  }
}

# Create an internal load balancer fro the private subnets
resource "aws_lb" "privatelb" {
  name               = "privatelb"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [aws_security_group.int_sg.id]
  subnets            = [aws_subnet.pri3.id, aws_subnet.pri4.id]
 
 
  tags = {
    Name = "privatelb"
  }
}