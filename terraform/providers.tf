terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "~> 2.9.0"
    }
  }
  required_version = ">= 1.3.0"
}


provider "proxmox" {
  pm_api_url      = "https://192.168.29.82:8006/api2/json"
  pm_user         = "terraform@pve"
  pm_password     = "h5y@WhaTF"
  pm_tls_insecure = true
}

