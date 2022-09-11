## Source blocks
source "virtualbox-iso" "default" {
  boot_wait              = "${var.boot_wait_virtualbox}"
  cd_label               = "${var.cd_label}"
  cpus                   = "${var.cpus}"
  disk_size              = "${var.disk_size}"
  export_opts            = [
    "--manifest",
    "--vsys", "0"
    ]
  format                 = "ova"
  gfx_controller         = "vmsvga"
  gfx_vram_size          = "32"
  guest_additions_path   = "/tmp/VBoxGuestAdditions.iso"
  guest_os_type          = "RedHat_64"
  hard_drive_interface   = "sata"
  headless               = "${var.headless}"
  memory                 = "${var.memory}"
  shutdown_command       = "echo ${var.ssh_password} | sudo -S shutdown -P now"
  ssh_handshake_attempts = "${var.ssh_handshake_attempts}"
  ssh_password           = "${var.ssh_password}"
  ssh_pty                = "${var.ssh_pty}"
  ssh_timeout            = "${var.ssh_timeout}"
  ssh_username           = "${var.ssh_username}"
  vboxmanage             = [
    ["modifyvm", "{{ .Name }}", "--vrde", "off"]
  ]
}

source "vmware-iso" "default" {
  boot_wait              = "${var.boot_wait_vmware}"
  cd_label               = "${var.cd_label}"
  disk_size              = "${var.disk_size}"
  guest_os_type          = "rhel8-64"
  headless               = "${var.headless}"
  memory                 = "${var.memory}"
  shutdown_command       = "echo ${var.ssh_password} |sudo -S shutdown -P now"
  skip_compaction        = false
  ssh_handshake_attempts = "${var.ssh_handshake_attempts}"
  ssh_password           = "${var.ssh_password}"
  ssh_pty                = "${var.ssh_pty}"
  ssh_timeout            = "${var.ssh_timeout}"
  ssh_username           = "${var.ssh_username}"
  tools_upload_flavor    = "linux"
}
