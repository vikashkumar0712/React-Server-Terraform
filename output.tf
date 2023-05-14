
output "instance_external_ip" {
  value = [for instance in google_compute_instance.vm-by-terraform : instance.network_interface[0].access_config[0].nat_ip]
}
