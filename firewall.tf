
resource "google_compute_firewall" "http-firewall" {
  for_each = var.fw_enable ? toset(["true"]) : toset([])
  
  name         = "http-firewall-manual"
  network      = "default"
  target_tags  = ["manual-http"]
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  allow {
    protocol = "tcp"
    ports    = ["3000"]
  }
}
