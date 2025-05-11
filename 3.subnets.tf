resource "google_compute_subnetwork" "uslizzo" {
  name                     = "uslizzo"
  ip_cidr_range            = "10.255.5.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.mainvpc.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "useastlizzo" {
  name                     = "useastlizzo"
  ip_cidr_range            = "10.255.15.0/24"
  region                   = "us-east1"
  network                  = google_compute_network.mainvpc.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "tokyolizzohq" {
  name                     = "tokyolizzohq"
  ip_cidr_range            = "10.245.25.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.prodvpc.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "saopaulolizzohq" {
  name                     = "saopaulolizzohq"
  ip_cidr_range            = "10.245.35.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.prodvpc.id
  private_ip_google_access = true
}