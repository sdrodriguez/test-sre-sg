resource "aws_security_group" "allow_ssh_anywhere" {
  name        = "allow_ssh_anywhere"
  description = "permite trafico ssh"
  vpc_id      = "vpc-990802f1"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    cidr_blocks = [
        "0.0.0.0/0"
        ]# add a CIDR block here
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}