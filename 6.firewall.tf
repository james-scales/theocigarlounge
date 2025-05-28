################### MAINVPC ########################
resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "icmp" {
  name    = "icmp"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "rdp" {
  name    = "rdp"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
}
resource "google_compute_firewall" "allow-db" {
  name    = "allow-db"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports    = ["1521", "3306"]
  }

  source_ranges = ["0.0.0.0/0"]
}

################ PRODVPC ####################
resource "google_compute_firewall" "allow-ssh-prod" {
  name    = "allow-ssh-prod"
  network = google_compute_network.prodvpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-http-prod" {
  name    = "allow-http-prod"
  network = google_compute_network.prodvpc.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}
# resource "google_compute_firewall" "icmp-prod" {
#   name    = "icmp-prod"
#   network = google_compute_network.prodvpc.name

#   allow {
#     protocol = "icmp"
#   }

#   source_ranges = ["0.0.0.0/0"]
# }

# resource "google_compute_firewall" "rdp-prod" {
#   name    = "rdp-prod"
#   network = google_compute_network.prodvpc.name

#   allow {
#     protocol = "tcp"
#     ports = ["3389"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }
# resource "google_compute_firewall" "allow-db-prod" {
#   name    = "allow-db-prod"
#   network = google_compute_network.prodvpc.name

#   allow {
#     protocol = "tcp"
#     ports    = ["1521", "3306"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }