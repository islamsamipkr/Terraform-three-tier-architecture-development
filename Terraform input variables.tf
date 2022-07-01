#Terraform ami variable
variable "aws_region" {
        description="Region in which the AWS resources to be created"
        type=string
        default="us-east-1"
}

variable "instance_type"{
    description="The type of instance"
    type=string
    default="t3.micro"
}

variable "instance_keypair"{
    description="AWS EC2 key pair that needs to be associated"
    type=string
    default="terraform-key"
}

