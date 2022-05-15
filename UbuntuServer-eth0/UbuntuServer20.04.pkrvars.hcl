# Boot

boot_command = [
  "<enter><wait2>",
  "<enter><wait2>",
  "<f6><esc><wait2>",
  "autoinstall<wait2>",
  "<spacebar>",
  "ds=nocloud;<wait2>",
  "<enter>"
]
boot_wait_virtualbox = "5s"
boot_wait_vmware = "5s"

# ISO

iso_checksum = "28ccdb56450e643bad03bb7bcf7507ce3d8d90e8bf09e38f6bd9ac298a98eaad"
iso_name = "ubuntu-20.04.4-live-server-amd64.iso"
iso_url = "https://releases.ubuntu.com/22.04/ubuntu-20.04.4-live-server-amd64.iso"

# Build

vm_name = "Ubuntu-Server-20.04"
