# terraform-ec2-nginx-example
Using Terraform to Deploy Nginx Webserver on AWS EC2 Instance

## Overview
This demonstration project showcases the deployment of an Nginx Webserver on AWS EC2 through Terraform. The project involves the provisioning of an Nginx instance on an AWS EC2 using user data, accompanied by the configuration of a requisite security group.

## Instructions
Follow these steps to effectively use the demo project:

Initialize the project workspace by executing the command **terraform init**.
Trigger the infrastructure provisioning process by running **terraform apply**. This action will establish a Virtual Private Cloud (VPC) housing Private and Public Subnets, along with a NAT Gateway and three EC2 instances.
When you no longer require the resources, dismantle the infrastructure with the command **terraform destroy**.

### Note
Please be mindful that the resources generated in this illustrative example might result in expenses. Thus, it is advisable to terminate the infrastructure if it is not needed anymore.
