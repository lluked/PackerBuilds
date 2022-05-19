# CentOS-Stream

Packer configuration to build a basic CentOS Stream box with virtualbox-iso and vmware-iso builders.

`ks.cfg` file is mounted under `OEMDRV` to kickstart build.

`vagrant.sh` script from the [chef/bento](https://github.com/chef/bento) project to ensure the vagrant public key is installed to allow vagrant to connect to the outputted box. This carries the `Apache-2.0 License`. 

Credentials are defined in `templates/user-data.pkrtpl.hcl` and `variables.pkr.hcl`, as `vagrant:vagrant`.

Separate variable files are included to build Ubuntu 20.04 and 22.04.

Instructions:
-   Run `packer init .` to install required packer plugins.
-   Run `packer build -only=virtualbox-iso.centos-stream -var-file="CentOS-Stream-8.pkrvars.hcl" .` for a VirtualBox build of CentOS Stream 8.
-   Run `packer build -only=vmware-iso.centos-stream -var-file="CentOS-Stream-8.pkrvars.hcl" .` for a VMWware build of CentOS Stream 8.
