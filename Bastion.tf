module "bastion" {
  source                = "Guimove/bastion/aws"
  bucket_name           = "kenamoymak.k8s.local"
  bastion_record_name   = "bastion_server"
  bastion_ami           = "ami-013f17f36f8b1fefb"
  hosted_zone_id        = "us-east-1"
  region                = "us-east-1"
  vpc_id                = aws_vpc.myvpc.id
  is_lb_private         = false
  bastion_host_key_pair = "k8-key"
  create_dns_record     = true
  elb_subnets          = [
    "aws_subnet.pub1.name",
    "aws_subnet.pub2.name"
  ]
  auto_scaling_group_subnets = [
    "pub1",
    "pub2"
  ]
  tags = {
    "name" = "bastion_host",
    
  }
}