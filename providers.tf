provider "aws" {
    region = "${var.region}"
}

terraform {
    backend "s3"{
        bucket = "s3 bucket"
        key = "terrafrom.tfstate"
        region = "us-east-1"
    }

}