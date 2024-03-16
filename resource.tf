resource "aws_instance" "instance1" {
  ami                     = "${var.instance_ami}"
  instance_type           = "${var.instance_type}"
  count = "${var.count}"
 # subnet_id              = aws_subnet.public.id
  security_groups = ["default"]
  
  key_name = "${var.key_name}"
tags = {
      Name = "${var.instance_name}"
}
connection {
  type = "ssh"
  user = "ec2-user"
  private_key = file("yourfilename.pem")
  host = self.public_ip
}


provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
}

provisioner "file" {
  source = "named.conf"
  destination = "/tmp/named.conf"
}

provisioner "file" {
  source = "vaibhav_dns"
  destination = "/tmp/vaibhav_dns"
}


provisioner "remote-exec" {
  inline = [ 
    "sudo chmod a+x /tmp/script.sh",
    "sudo sh /tmp/script.sh"    ]  
}
}

output "public_ip_instance1" {
  value = aws_instance.instance1[*].public_ip # * for all counts of instance 1 ami instances
}


  
  

