# using file this to create a VM instance

resource "google_compute_instance" "this" {
name = "uscentralvm"
machine_type = "e2-small"
zone = "us-central1-a"
allow_stopping_for_update = true

boot_disk {
    initialize_params {
        image = "debian-cloud/debian-11"
 }
}
network_interface {
    subnetwork = google_compute_subnetwork.uslizzo.name
    access_config {
      // Public IP
    }
 }
 metadata_startup_script = file("${path.module}/startup.sh")
 
}

resource "google_compute_instance" "newvminstance" {
name = "useastvm"
machine_type = "e2-small"
zone = "us-east1-b"
allow_stopping_for_update = true

boot_disk {
    initialize_params {
        image = "debian-cloud/debian-11"
 }
}
network_interface {
    subnetwork = google_compute_subnetwork.useastlizzo.name
    access_config {
      // Public IP
    }
 }
 metadata_startup_script = file("${path.module}/startup.sh")
 
}

resource "google_compute_instance" "lizzotokyohq" {
name = "asiatokyovm"
machine_type = "e2-small"
zone = "asia-northeast1-b"
allow_stopping_for_update = true

boot_disk {
    initialize_params {
        image = "debian-cloud/debian-11"
 }
}
network_interface {
    subnetwork = google_compute_subnetwork.tokyolizzohq.name
    access_config {
      // Public IP
    }
 }
 metadata_startup_script = file("${path.module}/startup.sh")
 
}