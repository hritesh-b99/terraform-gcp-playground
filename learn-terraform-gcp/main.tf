terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("/Users/hsonawan/Downloads/terraform-karthik-test-90d6d853e63c.json")

  project = "terraform-karthik-test"
  region  = "us-central1"   // should I use us-east?
  zone    = "us-central1-c"   // ^^
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
