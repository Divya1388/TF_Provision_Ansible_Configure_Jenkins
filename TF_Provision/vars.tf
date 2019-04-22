variable "instance_ami"{
type = "map"
default = {
us-east-1 = "ami-0de53d8956e8dcf80"
us-west-1 = "ami-0019ef04ac50be30f"
}
}
variable "instance_type"{
default = "t2.micro"
}
