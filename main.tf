resource "aws_instance" "magot" {
  ami           = var.ami
  instance_type = var.instance_type["production"]
  subnet_id     = aws_subnet.subnt1.id
  tags = {
    name = var.servers[1]
  }
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnt1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sudnet_cidr1

  tags = {
    Name = var.subnet_name[0]
  }
}

resource "aws_subnet" "subnt2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr2

  tags = {
    Name = var.subnet_name[1]
  }
}


