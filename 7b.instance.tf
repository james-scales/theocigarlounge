# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template
resource "google_compute_region_instance_template" "uscentraltemplate" {
  name         = "uscentraltemplate"
  description  = "This template is used to clone uscentralvm"
  machine_type = "e2-medium"
  region       = "us-east1"

  # Create a new boot disk from an image
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Config
  network_interface {
    subnetwork = google_compute_subnetwork.useastlizzo.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver
  metadata_startup_script = file("./startup.sh")
}