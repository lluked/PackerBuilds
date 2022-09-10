# Build
build {

  name = "roles"

  source "virtualbox-iso.default" {
    name             = "redhat7"
    boot_command     = "${var.redhat7_boot_command}"
    vm_name          = "${var.redhat7_vm_name}_VirtualBox"
    iso_checksum     = "${var.redhat7_iso_checksum_type}:${var.redhat7_iso_checksum}"
    iso_urls         = ["${var.redhat7_iso_path}/${var.redhat7_iso_name}", "${var.redhat7_iso_url}"]
    cd_files         = "${var.redhat7_cd_files}"
    output_directory = "output/${var.redhat7_vm_name}_VirtualBox/"
  }

  source "virtualbox-iso.default" {
    name             = "redhat8"
    boot_command     = "${var.redhat8_boot_command}"
    vm_name          = "${var.redhat8_vm_name}_VirtualBox"
    iso_checksum     = "${var.redhat8_iso_checksum_type}:${var.redhat8_iso_checksum}"
    iso_urls         = ["${var.redhat8_iso_path}/${var.redhat8_iso_name}", "${var.redhat8_iso_url}"]
    cd_files         = "${var.redhat8_cd_files}"
    output_directory = "output/${var.redhat8_vm_name}_VirtualBox/"
  }

  source "virtualbox-iso.default" {
    name             = "redhat9"
    boot_command     = "${var.redhat9_boot_command}"
    vm_name          = "${var.redhat9_vm_name}_VirtualBox"
    iso_checksum     = "${var.redhat9_iso_checksum_type}:${var.redhat9_iso_checksum}"
    iso_urls         = ["${var.redhat9_iso_path}/${var.redhat9_iso_name}", "${var.redhat9_iso_url}"]
    cd_files         = "${var.redhat9_cd_files}"
    output_directory = "output/${var.redhat9_vm_name}_VirtualBox/"
  }

  source "vmware-iso.default" {
    name             = "redhat7"
    boot_command     = "${var.redhat7_boot_command}"
    vm_name          = "${var.redhat7_vm_name}_VMWare"
    iso_checksum     = "${var.redhat7_iso_checksum_type}:${var.redhat7_iso_checksum}"
    iso_urls         = ["${var.redhat7_iso_path}/${var.redhat7_iso_name}", "${var.redhat7_iso_url}"]
    cd_files         = "${var.redhat7_cd_files}"
    output_directory = "output/${var.redhat7_vm_name}_VMWare/"
  }

  source "vmware-iso.default" {
    name             = "redhat8"
    boot_command     = "${var.redhat8_boot_command}"
    vm_name          = "${var.redhat8_vm_name}_VMWare"
    iso_checksum     = "${var.redhat8_iso_checksum_type}:${var.redhat8_iso_checksum}"
    iso_urls         = ["${var.redhat8_iso_path}/${var.redhat8_iso_name}", "${var.redhat8_iso_url}"]
    cd_files         = "${var.redhat8_cd_files}"
    output_directory = "output/${var.redhat8_vm_name}_VMWare/"
  }

  source "vmware-iso.default" {
    name             = "redhat9"
    boot_command     = "${var.redhat9_boot_command}"
    vm_name          = "${var.redhat9_vm_name}_VMWare"
    iso_checksum     = "${var.redhat9_iso_checksum_type}:${var.redhat9_iso_checksum}"
    iso_urls         = ["${var.redhat9_iso_path}/${var.redhat9_iso_name}", "${var.redhat9_iso_url}"]
    cd_files         = "${var.redhat9_cd_files}"
    output_directory = "output/${var.redhat9_vm_name}_VMWare/"
  }

  provisioner "shell" {
    execute_command = "echo '${var.ssh_password}' | sudo -S env {{ .Vars }} {{ .Path }}"
    script          = "scripts/vagrant.sh"
  }

  post-processor "vagrant" {
    keep_input_artifact = true
    output = "output/{{.ArtifactId}}.box"
  }

}
