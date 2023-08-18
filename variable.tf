variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "us-west-2"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "AKIA52CZK6IOZHQ77Q6F"
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "A67+gt+tGX8HO/mrFczO1AA7ebzKq/GEWWQPfH3P"
}

variable "public_key_path" {
   description = "Enter the path to the SSH Public Key to add to AWS."
   default     = "./EC2-Demo.pem"
}

variable "key_name" {
    description = "Key to access the EC2 instance"
    type = string
    default = "EC2-Demo"
}