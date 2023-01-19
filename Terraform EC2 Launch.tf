#Terraform Settings-Block     
terraform{
    required_providers {
      aws = {
        source="hashicorp/aws"
        #version = "~3.21" Optional but recommended in production
      }
    }
    
}     
#Provider Block
provider "aws" {
  access_key = "AKIA3JCNOW73S2MU5EEU"
  secret_key = "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"
    region=var.aws_region
}

#Resource Block
resource "aws_instance" "ec2demo" {
    ami           = data.aws_ami.amzlinux2.id # Amazon Linux in us-east-1, update as per your region
    instance_type = var.instance_type
    key_name=var.instance_keypair
    vpc_security_group_ids=[aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
}

