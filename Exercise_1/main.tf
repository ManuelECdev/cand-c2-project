# TODO: Designate a cloud provider, region, and credentials

provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-2"
}

# TODO: provision 4 AWS  EC2 instances named Udacity T2

resource "aws_instance" "UdacityT2" {
  count = 4
  ami = "ami-01aab85a5e4a5a0fe"    
  instance_type = "t2.micro"
  subnet_id = "subnet-089a0e36ca28cff43"
  tags = {
    name = "Udacity T2"
  }
}
# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "UdacityM4" {
  count = 2
  ami = "ami-01aab85a5e4a5a0fe"    
  instance_type = "m4.large"
  subnet_id = "subnet-089a0e36ca28cff43"
  tags = {
    name = "Udacity M4"
  }
}
