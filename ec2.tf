resource "aws_instance" "server1" {
  ami                    = "ami-0195204d5dce06d99"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  //key_name      = aws_key_pair.aws_key.key_name
  availability_zone = "us-east-1a"
  user_data         = file("setup.sh")
  tags = {
    Name = "web1"
  }
}

resource "aws_instance" "server2" {
  ami                    = "ami-0195204d5dce06d99"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private2.id
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  //key_name      = aws_key_pair.aws_key.key_name
  availability_zone = "us-east-1b"
  user_data         = file("setup.sh")
  tags = {
    Name = "web2"
  }
}