# Build
variable "redhat8_vm_name" {
  description = "This is the name of the file for the new virtual machine."
  type = string
}

variable "redhat8_cd_files" {
  description = "A list of files to place onto a CD that is attached when the VM is booted."
  type = list (string)
  default = ["./redhat/OEMDRV/redhat8_ks.cfg"]
}

variable "redhat8_boot_command" {
  description = "The boot_command is an array of strings. The strings are all typed in sequence."
  type = list (string)
  default = ["<tab> inst.ks=hd:/dev/sr1:/redhat8_ks.cfg<enter>"]
}

# ISO
variable "redhat8_iso_checksum" {
  description = "The checksum for the ISO file or virtual hard drive file."
  type = string
}

variable "redhat8_iso_checksum_type" {
  description = "The type of checksum for the ISO file or virtual hard drive file."
  type = string
  default = "sha256"
}

variable "redhat8_iso_name" {
  description = "The name of the local ISO."
  type = string
}

variable "redhat8_iso_path" {
  description = "The path to a local ISO."
  type = string
  default = "iso/"
}

variable "redhat8_iso_url" {
  description = "A URL to the ISO containing the installation image or virtual hard drive (VHD or VHDX) file to clone."
  type = string
}
