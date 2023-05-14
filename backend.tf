# configuring Google cloud Bucket as Remote Backend

terraform {
  backend "gcs" {
    bucket         = "terraform-backend-vikash"
    # prefix         = "<prefix>"
    # project        = "qwiklabs-gcp-00-a3c2427f1f12"
    credentials    = "./keys.json"
    
  }
}   