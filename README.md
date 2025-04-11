####  AWS Auto Scaling Group with Application Load Balancer using Terraform ###


### I assume you have basic knowledge of AWS (vpc, subnet, route table, routing, security group)

### To work with terraform and AWS , you need to connect with AWS and for this you need to install AWS CLI on local machine..........

### Infrastructure Components I use to complete the application Load balancing and fully automated using Terraform......


- ✅ Custom VPC (10.0.0.0/16)
- ✅ Two Public Subnets (10.0.1.0/24 & 10.0.2.0/24)
- ✅ Internet Gateway & Public Route Table
- ✅ EC2 Launch Template with Nginx (Ubuntu 22.04)
- ✅ Application Load Balancer (HTTP)
- ✅ Auto Scaling Group (min: 1, max: 4, desired: 2)
- ✅ CloudWatch Alarms for CPU-based scaling

#### For simplicity , I just installed nginx web server instaed of web application and in future I will test with real life application ...

### To test  this, you need to clone the Repositiry.....
git clone https://github.com/mbhuiyanst/aws_application_Loadbalance_auto_scalling.git

Then

cd aws_application_Loadbalance_auto_scalling

#### Then create ssh-key locally when you are on the ec2-autoscalling directory

ssh-keygen -t rsa -f my-key-autoscale

#### You can give any name and edit according to that variable and main.tf files

### Now  deploy the infrastrcture

terraform init
terraform apply -auto-approve

### This will:

Create a custom VPC with public subnets

Create a Launch Template and Auto Scaling Group

Deploy an Application Load Balancer (ALB)

Register EC2 instances running Nginx behind the ALB


### Access the Application Load Balancer

##### copy the AWS generated domain name and paste it on the browser and you will see differnt ip with hello message each time you refresh





