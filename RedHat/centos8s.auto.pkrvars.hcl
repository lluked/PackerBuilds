###
### CentOS Stream 8 Auto Vars
###

redhat8_vm_name           = "CentOS-Stream-8"
redhat8_cd_files          = ["./OEMDRV/centos8s_ks.cfg"]
redhat8_boot_command      = ["<tab> inst.ks=hd:/dev/sr1:/centos8s_ks.cfg<enter>"]
redhat8_iso_name          = "CentOS-Stream-8-x86_64-latest-boot.iso"
redhat8_iso_url           = "http://mirrors.gethosted.online/centos/8-stream/isos/x86_64/CentOS-Stream-8-x86_64-latest-boot.iso"
redhat8_iso_path          = "./iso"
# Checksum file fails to read from repo, manually update checksum if needed
redhat8_iso_checksum_type = "sha256"
redhat8_iso_checksum      = "a3fc63298a23093db88fb0812dd0abb304e0608e5d466ae589974dd85eed075f"
// redhat8_iso_checksum_type = "file"
// redhat8_iso_checksum      = "http://mirrors.gethosted.online/centos/8-stream/isos/x86_64/CHECKSUM"
