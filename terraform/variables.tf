# GCP authentication file
variable "gcp_access_token" {
  type        = string
  description = "GCP access token"
  sensitive   = true
}