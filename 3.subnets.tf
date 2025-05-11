resource "google_compute_subnetwork" "uslizzo051025" {
  name                     = "uslizzo051025"
  ip_cidr_range            = "10.255.5.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.mainvpc051025.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "useastlizzo051025" {
  name                     = "useastlizzo051025"
  ip_cidr_range            = "10.255.15.0/24"
  region                   = "us-east1"
  network                  = google_compute_network.mainvpc051025.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "tokyolizzohq" {
  name                     = "tokyolizzohq"
  ip_cidr_range            = "10.245.25.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.prodvpc051025.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "saopaulolizzohq" {
  name                     = "saopaulolizzohq"
  ip_cidr_range            = "10.245.35.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.prodvpc051025.id
  private_ip_google_access = true
}