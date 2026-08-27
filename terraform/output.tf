
output "instance_public_ip" {
  value = aws_instance.myinstance1[0].public_ip
}
