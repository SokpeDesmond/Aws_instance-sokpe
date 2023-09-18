
variable "ami" {
  default     = "ami-0989fb15ce71ba39e"
  type        = string
  description = "ami of the instance"
}

# variable "instance_type" {
#   default = "t3.micro"
#   description = "type of instance to be use"
# }

variable "servers" {
  default = ["dev", "prod", "test"]
  type    = list(any)
}


variable "instance_name" {
  default     = "sokpedemo"
  type        = string
  description = "name of the Ec2 instance"
}

variable "instance_type" {
  type = map(any)
  default = {
    "development" = "t3.large"
    "production"  = "t3.micro"
  }
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  default = "vpcdemo4"
}


variable "subnet_name" {
  default = ["privatesubn1", "privatesubn2", ]
  type    = list(any)
}

variable "sudnet_cidr1" {
  default = "10.0.1.0/24"
}

variable "subnet_cidr2" {
  default = "10.0.2.0/24"
}
