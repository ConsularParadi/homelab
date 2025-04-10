variable "metadata" {
  description = "Metadata related to VM"
  type = object({
    vm_name = string
    node    = string
  })
  default = {
    vm_name = "default_name"
    node    = "pve"
  }
}

variable "cpu" {
  description = "Number of CPU cores"
  type        = number
  default     = 2
}

variable "memory" {
  description = "RAM allocated (in MB)"
  type        = number
  default     = 1024
}
variable "scsihw" {
  description = "Suitable setting of storage disks attached to TrueNAS"
  type        = string
}

variable "boot_disk" {
  description = "Boot Disk Configuration"
  type = object({
    size    = string
    type    = string
    storage = string
    iso     = string
  })
  default = {
    size    = "20G"
    type    = "scsi"
    storage = "local-lvm"
    iso     = "default"
  }
}

variable "extra_disks" {
  description = "Other Disks Configuration"
  type = map(object({
    size    = string
    type    = string
    storage = string
  }))
  default = {
  }
}
