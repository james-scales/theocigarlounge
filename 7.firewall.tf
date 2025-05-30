# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.mainvpc.name

  allow {
    protocol      = "tcp"
    ports         = ["22"]
  }

  allow {
    protocol      = "tcp"
    ports         = ["80"]
    
  }
source_ranges = ["0.0.0.0/0"]
}