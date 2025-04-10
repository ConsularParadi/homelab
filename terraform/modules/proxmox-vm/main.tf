resource "proxmox_vm_qemu" "proxmox-vm" {
  name        = var.metadata.vm_name
  target_node = var.metadata.node
  memory      = var.memory
  cores       = var.cpu

  disk {
    size    = var.boot_disk.size
    type    = var.boot_disk.type
    storage = var.boot_disk.storage
  }
  iso = "local:iso/${var.boot_disk.iso}.iso"

  dynamic "disk" {
    for_each = var.extra_disks
    content {
      size    = disk.value.size
      type    = disk.value.type
      storage = disk.value.storage
    }
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
}
