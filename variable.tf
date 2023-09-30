
variable "ami" {
  default     = "ami-09166fb15ce71ba21e"
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


variable "prisubnet_name" {
  default = ["privatesubn1", "privatesubn2", ]
  type    = list(any)
}

variable "prisudnet_cidr1" {
  default = "10.0.1.0/24"
}

variable "prisudnet_cidr2" {
  default = "10.0.2.0/24"
}

variable "pubsubnet_name" {
  default = ["publicsubn1", "publicsubn2", ]
  type    = list(any)
}

variable "pubsudnet_cidr1"{
  default = "10.0.3.0/24"
}

variable "pubsudnet_cidr2" {  
 default = "10.0.4.0/24"
}

