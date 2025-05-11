resource "google_compute_router" "usrouter" {
  name    = "usrouter"
  region  = "us-central1"
  network = google_compute_network.mainvpc.id
}
resource "google_compute_router" "useastrouter" {
  name    = "useastrouter"
  region  = "us-east1"
  network = google_compute_network.mainvpc.id
}
resource "google_compute_router" "tokyorouter" {
  name    = "tokyorouter"
  region  = "asia-northeast1"
  network = google_compute_network.prodvpc.id
}
# resource "google_compute_router" "saopaulorouter" {
#  name    = "saopaulorouter"
#  region  = "southamerica-east1"
#  network = google_compute_network.prodvpc.id
#}