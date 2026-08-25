

variable "instance_type"{
    description="instance type of the the instance"
    type=string
    default="t3.micro"
}

variable "ami_id"{
    type=string
    default="ami-01a00762f46d584a1"
}

variable "instance_mykey"{
    description="instance private keys"
    type= string
    default="mykey3"
}

variable "instance_name"{
    description="name of the instance"
    type= string
    default="deploymentserver"

}

