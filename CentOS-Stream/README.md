# Ubuntu-Live-Server

Packer configuration to build a basic Ubuntu Live Server box with virtualbox-iso and vmware-iso builders.

`user-data` file templated from a `pkrtpl` template to set the correct network interface depending on build platform.

`vagrant.sh` script from the [chef/bento](https://github.com/chef/bento) project to ensure the vagrant public key is installed to allow vagrant to connect to the outputted box. This carries the `Apache-2.0 License`. 

Credentials are defined in `templates/user-data.pkrtpl.hcl` and `variables.pkr.hcl`, as `vagrant:vagrant`.

Separate variable files are included to build Ubuntu 20.04 and 22.04.

Instructions:
-   Read the notes.
-   Run `packer init .` to install required packer plugins.
-   Run `packer build -only=virtualbox-iso.ubuntu-server -var-file="UbuntuServer20.04.pkrvars.hcl" .` for a virtualbox build of Ubuntu Server 20.04.
-   Run `packer build -only=virtualbox-iso.ubuntu-server -var-file="UbuntuServer22.04.pkrvars.hcl" .` for a virtualbox build of Ubuntu Server 22.04.
-   Run `packer build -only=vmware-iso.ubuntu-server -var-file="UbuntuServer20.04.pkrvars.hcl" .` for a vmware build of Ubuntu Server 20.04.
-   Run `packer build -only=vmware-iso.ubuntu-server -var-file="UbuntuServer22.04.pkrvars.hcl" .` for a vmware build of Ubuntu Server 22.04.

Notes:
-   Timing is important, different hosts load at different speeds, boot_wait needs changing to suit the build host. Separate variables exist for Virtualbox and VMWare.
