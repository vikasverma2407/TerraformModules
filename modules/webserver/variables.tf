variable "vpc_id" {
	type = string
	description = "vpc id"
}

variable "cidr_block" {
	type = string
	description = "subnet cidr block"
}

variable "webserver_name" {
	type = string
	description = "webserver name"
}

variable "ami" {
	type = string
	description = "AMI"
}

variable "instance_type" {
	type    = string
	default = "t2.micro"
}