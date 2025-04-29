terraform {
  required_version = ">= 1.4.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}


provider "google" {
  project = "Raju"  
  region  = "us-west1"
}

resource "google_folder" "raju_folder" {
  display_name = "Raju"
  parent       = "organizations/123456789012"  # Replace with your actual Org ID
}


resource "google_project" "my_project" {
  name       = "raju-sub-project"
  project_id = "raju-sub-project"  # must be globally unique

  billing_account = "01CCA3-1E791F-50DFD9"  # your billing account ID
}