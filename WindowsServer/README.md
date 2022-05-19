# Windows-Server

Packer configuration to build a basic Windows Server box with virtualbox-iso and vmware-iso builders.

Answer files are templated from `templates/autounattend/generic/...` for `"gui"` and `"core"`.

Specific answer files can be added for a release and enabled in the variable file for that release.

Instructions:
-   Run `packer init .` to install required packer plugins.
-   Run `packer build -only=virtualbox-iso.windows-server -var-file="WindowsServer2016.pkrvars.hcl" .` for a VirtualBox build of Windows Server 2016.
-   Run `packer build -only=virtualbox-iso.windows-server -var-file="WindowsServer2019.pkrvars.hcl" .` for a VirtualBox build of Windows Server 2019.
-   Run `packer build -only=virtualbox-iso.windows-server -var-file="WindowsServer2022.pkrvars.hcl" .` for a VirtualBox build of Windows Server 2022.
-   Run `packer build -only=vmware-iso.windows-server -var-file="WindowsServer2016.pkrvars.hcl" .` for a VMWare build of Windows Server 2016.
-   Run `packer build -only=vmware-iso.windows-server -var-file="WindowsServer2019.pkrvars.hcl" .` for a VMWare build of Windows Server 2019.
-   Run `packer build -only=vmware-iso.windows-server -var-file="WindowsServer2022.pkrvars.hcl" .` for a VMWare build of Windows Server 2022.
