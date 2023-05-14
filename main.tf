# Creating Google Compute Instances

resource "google_compute_instance" "vm-by-terraform" {

  for_each = toset("${var.names}")
  name         = each.value
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["manual-http"]
  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
    # firewall = google_compute_firewall.http-firewall.name
  }
  metadata_startup_script = file("${path.module}/script.sh")
  metadata = {
    ssh-keys = "username:${file("~/.ssh/id_rsa.pub")}"
  }
}

