resource "google_kms_key_ring" "keyring" {
  name     = "keyring-example"
  location = "global"
}

resource "google_kms_crypto_key" "example-asymmetric-sign-key" {
  name     = "crypto-key-example"
  key_ring = google_kms_key_ring.keyring.id
  purpose  = "ASYMMETRIC_SIGN"

  version_template {
    algorithm        = "EC_SIGN_P384_SHA384"
    protection_level = "HSM"
  }

  lifecycle {
    prevent_destroy = true
  }
}