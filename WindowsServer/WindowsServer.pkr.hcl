
source "virtualbox-iso" "windows-server" {
  boot_wait        = "${var.boot_wait}"
  cpus             = "${var.numvcpus}"
  communicator     = "winrm"
  disk_size        = "${var.disk_size}"
  floppy_files     = ["autounattend/${var.autounattend_version}/${var.server_build_type}/autounattend.xml"]
  gfx_controller   = "vboxsvga"
  gfx_vram_size    = "32"
  guest_os_type    = "${var.virtualbox_guest_os_type}"
  headless         = "${var.headless}"
  iso_checksum     = "${var.iso_checksum_type}:${var.iso_checksum}"
  iso_urls         = ["${var.iso_path}/${var.iso_name}", "${var.iso_url}"]
  memory           = "${var.memsize}"
  output_directory = "output/${var.vm_name}_${trimsuffix(source.type, "-iso")}"
  shutdown_command = "shutdown /s /t 5 /f /d p:4:1 /c \"Packer Shutdown\""
  shutdown_timeout = "30m"
  vm_name          = "${var.vm_name}-${var.server_build_type}"
  winrm_insecure   = true
  winrm_password   = "${var.winrm_password}"
  winrm_timeout    = "4h"
  winrm_use_ssl    = true
  winrm_username   = "${var.winrm_username}"
}

source "vmware-iso" "windows-server" {
  boot_wait         = "${var.boot_wait}"
  communicator      = "winrm"
  cpus              = "${var.numvcpus}"
  disk_size         = "${var.disk_size}"
  disk_type_id      = "0"
  floppy_files      = ["autounattend/${var.autounattend_version}/${var.server_build_type}/autounattend.xml"]
  guest_os_type     = "windows9srv-64"
  headless          = "${var.headless}"
  http_directory    = "http"
  iso_checksum      = "${var.iso_checksum_type}:${var.iso_checksum}"
  iso_urls          = ["${var.iso_path}/${var.iso_name}", "${var.iso_url}"]
  memory            = "${var.memsize}"
  output_directory = "output/${var.vm_name}_${trimsuffix(source.type, "-iso")}"
  shutdown_command = "shutdown /s /t 5 /f /d p:4:1 /c \"Packer Shutdown\""
  shutdown_timeout = "30m"
  skip_compaction   = false
  version           = "14"
  vm_name           = "${var.vm_name}-${var.server_build_type}"
  vmx_data = {  
    "scsi0.virtualDev"  = "lsisas1068"
  }
  winrm_insecure = true
  winrm_password = "${var.winrm_password}"
  winrm_timeout  = "4h"
  winrm_use_ssl  = true
  winrm_username = "${var.winrm_username}"
}

build {
  sources = ["source.virtualbox-iso.windows-server", "source.vmware-iso.windows-server"]

  post-processor "checksum" {
  checksum_types = ["sha256"]
  output = "output/${var.vm_name}-${var.server_build_type}_${trimsuffix(source.type, "-iso")}/${var.vm_name}_{{ .ChecksumType }}.checksum"
  }

  post-processor "vagrant" {
  keep_input_artifact = true
  output = "output/${var.vm_name}-${var.server_build_type}_${trimsuffix(source.type, "-iso")}.box"
  }

}
