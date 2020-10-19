provider "aws" {
   access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
}

resource "aws_vpc" "vpc"{

    cidr_block=var.vpc_cidr
    enable_dns_hostnames = true
    tags = {
        Name ="My-VPC1"
        Owner = "My-Chiru"
    }

    # depends_on=[aws_s3_bucket.b,]
}

resource "aws_internet_gateway" "default" {
    vpc_id ="${aws_vpc.vpc.id}"
    tags ={
    Name = "vpc-igw"
    }
}

resource "aws_subnet" "public_subnet"{

    vpc_id = "${aws_vpc.vpc.id}"
    cidr_block=var.subnet_cidr
    tags={
        Name ="My-Subnet-1"
         Owner ="My-Chiru"
    }
}


# resource "aws_s3_bucket" "b" {
#   bucket = "my-first-test-01"
#   acl    = "private"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }



# resource "aws_flow_log" "flow_log" {
#   log_destination      = "${aws_s3_bucket.b.arn}"
#   log_destination_type = "s3"
#   traffic_type         = "ALL"
#   vpc_id = "${aws_vpc.vpc.id}"
# }

