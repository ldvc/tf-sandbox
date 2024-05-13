terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.56.1"
    }
  }
}

provider "proxmox" {
  endpoint = "https://proxmox.local:8006/"
  api_token = var.api_token
  insecure = false
  ssh {
    agent    = true
    username = "root"
  }
}
