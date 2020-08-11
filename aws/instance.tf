resource "aws_instance" "web-sgeq" {
  ami           = "ami-000e7ce4dd68e7a11"
  instance_type = "t3.micro"
  key_name = "${aws_key_pair.keypairterra.key_name}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh_anywhere.id}","${aws_security_group.allow_http_anywhere.id}"]
  tags = {
    Name = "test-terraform"
  }
}