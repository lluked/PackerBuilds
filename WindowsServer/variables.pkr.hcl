
variable "admin_password" {
  type    = string
  default = "packer"
}

variable "autounattend_version" {
  type    = string
  default = "generic"
}

variable "boot_wait" {
  type    = string
  default = "5s"
}

variable "disk_size" {
  type    = string
  default = "40960"
}

variable "headless" {
  type = bool
  default = true
}

variable "hostname" {
  type    = string
  default = "Win-Server"
}

variable "iso_checksum" {
  type    = string
}

variable "iso_checksum_type" {
  type    = string
}

variable "iso_name" {
  description = "The name of the local ISO."
  type = string
}

variable "iso_path" {
  description = "The path to a local ISO."
  type = string
  default = "iso/"
}

variable "iso_url" {
  type    = string
}

variable "memsize" {
  type    = string
  default = "2048"
}

variable "numvcpus" {
  type    = string
  default = "2"
}

variable "server_build_type" {
  type    = string
  default = "gui"
}

variable "virtualbox_guest_os_type" {
  type    = string
}

variable "vm_name" {
  type    = string
  default = "Win-Server"
}
