provider "google" {
  project     = "qwiklabs-gcp-04-03bce31e7a0f"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "./keys.json"
}