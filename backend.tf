terraform {
    backend "s3" {
        bucket = "mytfbuckettest"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}