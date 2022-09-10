###
### CentOS 7 Auto Vars
###

redhat7_vm_name           = "CentOS-7"
redhat7_cd_files          = ["./OEMDRV/centos7_ks.cfg"]
redhat7_boot_command      = ["<tab> inst.ks=hd:/dev/sr1:/centos7_ks.cfg<enter>"]
redhat7_iso_name          = "CentOS-7-x86_64-Minimal-2009.iso"
redhat7_iso_url           = "http://mirrors.gethosted.online/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-NetInstall-2009.iso"
redhat7_iso_path          = "./iso"
# Checksum file fails to read from repo, manually update checksum if needed
// redhat7_iso_checksum_type = "sha256"
// redhat7_iso_checksum      = "b79079ad71cc3c5ceb3561fff348a1b67ee37f71f4cddfec09480d4589c191d6"
redhat7_iso_checksum_type = "file"
redhat7_iso_checksum      = "http://mirrors.gethosted.online/centos/7.9.2009/isos/x86_64/sha256sum.txt"
