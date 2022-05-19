# Windows-Server

Packer configuration to build a basic Windows Server box with virtualbox-iso and vmware-iso builders.

Credentials are defined in the answer files under `autounattend/generic/...` and `variables.pkr.hcl`, as `Administrator:packer`.

Common answer files for `"gui"` and `"core"` installations are used across all releases, custom answer files can be added for a specific release and enabled in the variable file specific to that release.

Instructions:
-   Run `packer init .` to install required packer plugins.
-   Run `packer build -only=virtualbox-iso.windows-server -var-file="WindowsServer2016.pkrvars.hcl" .` for a VirtualBox build of Windows Server 2016.
-   Run `packer build -only=virtualbox-iso.windows-server -var-file="WindowsServer2019.pkrvars.hcl" .` for a VirtualBox build of Windows Server 2019.
-   Run `packer build -only=virtualbox-iso.windows-server -var-file="WindowsServer2022.pkrvars.hcl" .` for a VirtualBox build of Windows Server 2022.
-   Run `packer build -only=vmware-iso.windows-server -var-file="WindowsServer2016.pkrvars.hcl" .` for a VMWare build of Windows Server 2016.
-   Run `packer build -only=vmware-iso.windows-server -var-file="WindowsServer2019.pkrvars.hcl" .` for a VMWare build of Windows Server 2019.
-   Run `packer build -only=vmware-iso.windows-server -var-file="WindowsServer2022.pkrvars.hcl" .` for a VMWare build of Windows Server 2022.
