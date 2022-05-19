
# ISO

iso_checksum      = "772700802951b36c8cb26a61c040b9a8dc3816a3"
iso_checksum_type = "sha1"
iso_name          = "Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.ISO"
iso_url           = "https://software-download.microsoft.com/download/pr/Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.ISO"

# Build

server_build_type = "gui"

# Autounattend

# Add custom autounattend.xml.pkrtpl.hcl to release specific folder if required and uncomment line below
#autounattend_version = "2016"

# VM

virtualbox_guest_os_type = "Windows2016_64"
vm_name                  = "Windows-Server-2016"

# Windows
# (15 character limit)
hostname            = "WIN-SERVER-2016"
