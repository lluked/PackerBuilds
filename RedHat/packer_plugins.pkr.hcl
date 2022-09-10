## Required plugins
packer {
  required_plugins {
    virtualbox = {
      version = ">= 1.0.3"
      source = "github.com/hashicorp/virtualbox"
    }
    vmware = {
      version = ">= 1.0.7"
      source = "github.com/hashicorp/vmware"
    }
  }
}
