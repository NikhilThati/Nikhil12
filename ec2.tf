provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "myec2" {
  ami           = "ami-0629230e074c580f2"
  instance_type = "t2.micro"
  subnet_id   = "subnet-01b6ac774a28996b1"
  key_name = "Nikhil"
  security_groups = ["sg-03fe3a9e93481754c"]
  tags = {
    Name = "Ec2tf"
  }
}
