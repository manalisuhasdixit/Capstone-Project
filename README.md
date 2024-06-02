# Capstone-Project
**Problem Statement:**


Creating an EC2 Machine as Webserver with Wordpress on it (using script in the user data) - Creating all necessary resources for it (VPC, SG, Subnets, IGW, Route Tables, etc.) - 2 AZ with 2 Subnets (Public and Private) - Local mysql database on the ec2 machine
 Adding RDS to the project 
- Script needs to be adjusted since the database will be on RDS 
- Multi-AZ RDS in private subnet

**Architecture Diagram**

![Capstone](https://github.com/manalisuhasdixit/Capstone-Project/assets/160490464/d274e2c8-18b3-4d01-85bc-44f3a53d2b69)


**Perequisite**

a) Setup the environment variables:

$env:AWS_ACCESS_KEY_ID=""

$env:AWS_SECRET_ACCESS_KEY=""

$env:AWS_REGION=""

b)Terraform Setup:

terraform init

terraform plan -out main.tfstate

terraform apply -out main.tfstate





