output "instance_publicip"{
    description="EC2 Instance Public IP"
    value=aws_instance.ec2demo.public_ip
}

output "instance_publicdns"{
    description="EC2 Instance Public DNS"
    value=aws_instance.ec2demo.public_dns
}  
