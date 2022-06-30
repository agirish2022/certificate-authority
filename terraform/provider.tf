terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.85.0"
    }
  }
  cloud {
    organization = "hcta-sentinel"

    workspaces {
      name = "certificate_authority"
    }
  }
}

provider "google" {
  region       = "us-central1"
  access_token = var.gcp_access_token
}

provider "google-beta" {
  region       = "us-central1"
  access_token = var.gcp_access_token
}