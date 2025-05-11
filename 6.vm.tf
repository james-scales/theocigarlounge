# using file this to create a VM instance

resource "google_compute_instance" "this" {
name = "cloudshell"
machine_type = "e2-small"
zone = "us-central1-a"
allow_stopping_for_update = true

boot_disk {
    initialize_params {
        image = "debian-cloud/debian-11"
 }
}
network_interface {
network = google_compute_network.mainvpc.name
subnetwork = google_compute_subnetwork.uslizzo.name
 }
}