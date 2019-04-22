resource "aws_instance" "jenkins" {
  ami           = "${lookup(var.instance_ami, var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name = "${aws_key_pair.ssh_key.key_name}"
  tags = {
    Name = "Jenkins"
  }
}

output "publice_ip"{
value = "${aws_instance.jenkins.public_ip}"
}
