###
### CentOS Stream 9 Auto Vars
###

redhat9_vm_name           = "CentOS-Stream-9"
redhat9_cd_files          = ["./OEMDRV/centos9s_ks.cfg"]
redhat9_boot_command      = ["<tab> inst.ks=hd:/dev/sr1:/centos9s_ks.cfg<enter>"]
redhat9_iso_name          = "CentOS-Stream-9-x86_64-latest-boot.iso"
redhat9_iso_url           = "http://mirror.stream.centos.org/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-boot.iso"
redhat9_iso_path          = "./iso"
# Checksum file fails to read from repo, manually update checksum if needed
redhat9_iso_checksum_type = "sha256"
redhat9_iso_checksum      = "cf4156d110e6a822c720bdc9e0addd18e90d0c94da302986912bed69aec4ef05"
// redhat9_iso_checksum_type = "file"
// redhat9_iso_checksum      = "http://mirror.stream.centos.org/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-boot.iso.SHA256SUM"
