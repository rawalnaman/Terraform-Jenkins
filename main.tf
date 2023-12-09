provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
      envionrment = "Dev"
  }
}
resource "aws_instance" "second" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.small"
  tags = {
      Name = "TF-Instance"
      envionrment = "prod"
  }
}
