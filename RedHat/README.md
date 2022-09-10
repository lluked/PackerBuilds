# CentOS

Packer configuration to build a basic CentOS boxes with virtualbox-iso and vmware-iso builders.

relevant kickstart file is mounted for each build.

## Warning
Default Insecure credentials are used for Packer/Vagrant compatibility, please change appropriately in the kickstart files located in `OEMDRV` and the variables file `variables.auto.pkrvars`.
Defaults:
<code>
admin:packer
vagrant:vagrant
</code>

`vagrant.sh` script from the [chef/bento](https://github.com/chef/bento) project is used to ensure the vagrant public key is installed to allow vagrant to connect to the outputted box. This carries the `Apache-2.0 License`. This is removed by Vagrant on first connection.

## Instructions
-   Run `packer init .` to install required packer plugins.
-   Run `packer build -only=roles.virtualbox-iso.redhat7 .` for a VirtualBox build of CentOS Stream 7.
-   Run `packer build -only=roles.virtualbox-iso.redhat8 .` for a VirtualBox build of CentOS Stream 8.
-   Run `packer build -only=roles.virtualbox-iso.redhat9 .` for a VirtualBox build of CentOS Stream 9.
-   Run `packer build -only=roles.vmware-iso.redhat8 .` for a VMWware build of CentOS Stream 7.
-   Run `packer build -only=roles.vmware-iso.redhat8 .` for a VMWware build of CentOS Stream 8.
-   Run `packer build -only=roles.vmware-iso.redhat9 .` for a VMWware build of CentOS Stream 9.
-   Run `packer build -parallel-builds=1 .` to build all, one at a time.
