output "appserver_ids" {
   value = ["${aws_instance.app_server.*.id}"]
}

output "ip_addresses" {
   value = ["${aws_instance.app_server.*.id}"]
}

output "aws_instance_public_dns" {
  value = aws_instance.app_server.public_dns
}