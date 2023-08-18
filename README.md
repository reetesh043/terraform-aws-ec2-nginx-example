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

## Create AWS Access Keys

1. **Go to the Amazon Web Services console** and click on the name of your account (it is located in the top right corner of the console). Then, in the expanded drop-down list, select Security Credentials.
<img width="318" alt="image" src="https://github.com/reetesh043/terraform-aws-ec2-nginx-example/assets/6341343/8e1c5fdb-bfe3-4f20-8358-8594e93db7de">


2. **Access Keys:** In the "My security credentials" tab of the root user, scroll down to the "Access keys" section.
3. **View Credentials:** We can either view the existing access key(s) or create new ones. If you want to view the existing keys, they are displayed in the table along with their status (Active/Inactive) and the date they were created.

<img width="1297" alt="image" src="https://github.com/reetesh043/terraform-aws-ec2-nginx-example/assets/6341343/6c139984-2900-460d-b27d-1f4d2660b32f">

4. **View Secret Access Key:** To view the secret access key, click the "Show" button corresponding to the access key we want to reveal. Keep in mind that this will only show the secret access key once, so make sure to copy it and store it securely.

## Create an AWS Key Pair for EC2 Instance
The EC2 instance also expects a key to SSH into our EC2 instance. If we have an existing key pair we can use it. If not, we can follow the below steps to create a new key pair.
**Note:** Before going ahead with the steps, make sure we are in the same region where you want to provision the AWS resources. This is because key pairs are specific to regions


1. Search for **“key pairs”** in the AWS console and check the first item in the Features section
   
   <img width="659" alt="image" src="https://github.com/reetesh043/terraform-aws-ec2-nginx-example/assets/6341343/75514993-1e61-4408-85c0-1baa84d74a07">

2. Go to the **Create Key Pair dialog** box and enter the name of the key.
For this example, the name should be “EC2-Demo”. Make sure to check RSA as the Key Pair Type and the Key Format to .pem. We can use the .pem keys to SSH to our EC2 instance using OpenSSH. Once done, click on Create key pair button which will download the key to your local system.

<img width="830" alt="image" src="https://github.com/reetesh043/terraform-aws-ec2-nginx-example/assets/6341343/8a3a9ff8-cb29-4be2-b2e0-dab07a055511">

3. Copy the downloaded key to the current working directory. This working directory is basically our project directory.
Also, don’t forget to set the appropriate permissions to the .pem file. Otherwise, we will get errors while trying to SSH into the EC2 instance.

```
cp ~/Downloads/EC2-Demo.pem ./
chmod 400 EC2-Demo.pem
```
4. Next create the below configuration in variables.tf file to use key pair name as key_name to use in ec2 instance configuration.

```
variable "key_name" {
    description = "Key to access the EC2 instance"
    type = string
    default = "EC2-Demo"
}
```

The variable **key_name** is the same one we used while declaring the configuration for the EC2 instance.

```
resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  key_name               = var.key_name
}
```


