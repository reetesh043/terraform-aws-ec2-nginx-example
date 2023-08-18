# Terraform Deployment of Nginx Webserver on AWS EC2

## Project Overview
This repository serves as a demonstration of deploying an Nginx Webserver on an AWS EC2 instance using Terraform. The primary focus of the project lies in the automated provisioning of an Nginx instance on AWS EC2 utilizing user data. Additionally, it encompasses the setup of a necessary security group to ensure a secure environment.

## Usage Instructions
To effectively utilize this demonstration project, adhere to the following instructions:

1. Start by initializing the project workspace. Execute the command **terraform init** to set up the necessary groundwork.
2. Initiate the infrastructure provisioning procedure by executing **terraform apply**. This operation orchestrates the creation of a Virtual Private Cloud (VPC) containing Private and Public Subnets. Moreover, it establishes a NAT Gateway and deploys three EC2 instances.
3. If and when the resources are no longer needed, execute **terraform destroy** to dismantle the entire infrastructure.

## Important Consideration
Keep in mind that the resources instantiated in this illustrative example might lead to incurring costs. It is strongly recommended to terminate the infrastructure if it ceases to be necessary. Your fiscal prudence is advised.
