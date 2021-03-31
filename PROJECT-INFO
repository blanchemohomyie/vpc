Building a 3-tier-infrastructure in AWS USING TERRAFORM
=========================================
#1. Create the main.tf file with provider credentials
#2. Create the VPC with cird block 10.0.0.0/16
#3. Create 2 public subnets (10.0.1.0/24, 10.0.2.0/24) and 2 private subnets (10.0.3.0/24, 10.0.4.0/24) The subnets will be created in the same vpc.
#4. Create an internet gateway to connect the vpc to the internet
#5. Create a 2 route tables to associate or route traffic both in the public and private subnets
#6. Create route table associations 
#7. Create a NAT gateway to route traffic from the private subnet to the internet
#8. Create 2 application load balancers: one to be internet facing to route traffic from the internet. The second load balancer is internal, to balance the load in the private subnets
#9. Create 2 auto scaling groups, one in the public subnet and the other in the private
#10. Create auto scaling attachment to respective load balancers
#11. Create security groups; internal and external to be associated with the load balancers.
#12. Create a bastion host and place it in the public subnet, to act as an entry point into the infrastrucure.
