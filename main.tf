resource "aws_instance" "magot" {
  ami           = var.ami
  instance_type = var.instance_type["production"]
  subnet_id     = aws_subnet.pubsubnt.id
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

resource "aws_subnet" "prisubnt_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.prisudnet_cidr1

  tags = {
    Name = var.prisubnet_name[0]
  }
}

resource "aws_subnet" "prisubnt_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.prisudnet_cidr2

  tags = {
    Name = var.prisubnet_name[1]
  }
}

resource "aws_subnet" "pubsubnt" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pubsudnet_cidr1
 tags = {
    Name = var.pubsubnet_name[0]
  }
}

resource "aws_subnet" "pubsubnt2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pubsudnet_cidr2
  tags = {
    Name = var.pubsubnet_name[1]
  }
}

