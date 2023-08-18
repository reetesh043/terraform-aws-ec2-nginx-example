variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "us-west-2"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "ENTER_YOUR_AWS_ACCESS_KEY"
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "ENTER_YOUR_AWS_SECRET_KEY"
}

variable "public_key_path" {
   description = "Enter the path to the SSH Public Key to add to AWS."
   default     = "./EC2-Demo.pem"
}

variable "key_name" {
    description = "Key to access the EC2 instance"
    type = string
    default = "ENTER_NAME_OF_EC2_KEY_PAIR"
}