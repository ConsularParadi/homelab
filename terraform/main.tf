module "truenas" {
  source = "./modules/proxmox-vm"

  metadata = {
    vm_name = "truenas"
    node    = "pve"
  }

  cpu    = 2
  memory = 4096

  boot_disk = {
    size    = "32G"
    type    = "scsi"
    storage = "local-lvm"
    iso     = "TrueNAS"
  }

  extra_disks = {
    storage_disk = {
      size    = "600G"
      type    = "scsi"
      storage = "local-lvm"
    }
  }
  scsihw = "virtio-scsi-pci"
}

module "linux-server" {
  source = "./modules/proxmox-vm"

  metadata = {
    vm_name = "linux-server"
    node    = "pve"
  }

  cpu    = 6
  memory = 10240

  boot_disk = {
    size    = "32G"
    type    = "scsi"
    storage = "local-lvm"
    iso     = "fedora-server"
  }

  scsihw = "virtio-scsi-pci"
}
