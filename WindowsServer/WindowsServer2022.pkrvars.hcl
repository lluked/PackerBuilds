
# ISO

iso_checksum      = "4f1457c4fe14ce48c9b2324924f33ca4f0470475e6da851b39ccbf98f44e7852"
iso_checksum_type = "sha256"
iso_name          = "20348.169.210806-2348.fe_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso"
iso_url           = "https://software-download.microsoft.com/download/sg/20348.169.210806-2348.fe_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso"

# Build

server_build_type = "gui"

# Autounattend

# Add custom autounattend.xml.pkrtpl.hcl to release specific folder if required and uncomment line below
#autounattend_version = "2022"

# VM

virtualbox_guest_os_type = "Windows2022_64"
vm_name                  = "Windows-Server-2022"

# Windows
# (15 character limit)
hostname            = "WIN-SERVER-2022"
