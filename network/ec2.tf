resource "aws_instance" "bastion-ec2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public-subnet-1.id
  availability_zone = var.availability_zone_a
  vpc_security_group_ids = [aws_security_group.security-group-1.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.bastion-key-pair.key_name

  provisioner "local-exec" {
    command= "print ${self.public_ip}"
  }

}


resource "aws_instance" "application-ec2-1" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private-subnet-1.id
  availability_zone = var.availability_zone_a
  vpc_security_group_ids = [aws_security_group.security-group-2.id]
  key_name = aws_key_pair.application-key-pair.key_name

}


resource "aws_instance" "application-ec2-2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private-subnet-2.id
  availability_zone = var.availability_zone_b
  vpc_security_group_ids = [aws_security_group.security-group-2.id]
  key_name = aws_key_pair.application-key-pair.key_name

}


resource "aws_key_pair" "application-key-pair" {
  
  key_name = "application-key"
  public_key = tls_private_key.private-key.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.private-key.private_key_pem}' > ./16oct.pem"
  }

}

resource "aws_key_pair" "bastion-key-pair" {
  key_name = "bastion-key"
  public_key = tls_private_key.private-key.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.private-key.private_key_pem}' > ./16oct.pem"
  }

}

resource "tls_private_key" "private-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
