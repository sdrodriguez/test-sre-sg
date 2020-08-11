output "instance_public_ip" {
  value = "${aws_instance.web-sgeq.public_ip}"
}
