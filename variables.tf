
variable access_key{
    type=string
    default="xxxx"
}

variable secret_key{
    type=string
    default="yyyyy"
}

variable region {
    type=string
    default="us-east-1"
}


variable vpc_name {
    type=string
    default="My-Test-VPC"
}


variable vpc_cidr {
    type=string
    default="172.16.0.0/16"
}
variable subnet_cidr {
    type=string
    default="172.16.1.0/24"
}