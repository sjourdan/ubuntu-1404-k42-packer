# Ubuntu 14.04.3 (LTS) Vagrant VM with a 4.2 kernel

Based on [cbednarski/ubuntu-1404-packer](https://github.com/cbednarski/ubuntu-1404-packer).

This packer script creates no-frills Ubuntu 14.04.3 server virtual machine images for use with Vagrant (both VirtualBox and VMware Fusion). The image includes guest additions and basically nothing else, plus a 4.2.x kernel from Ubuntu Wily (for Docker OverlayFS support, UCP and more). Feel free to use this as a base for other things.

## Atlas

You can download tagged releases of this VM from [Atlas](https://atlas.hashicorp.com/sjourdan/boxes/ubuntu-1404-ucp) via:

    vagrant init sjourdan/ubuntu-1404-ucp
    vagrant up

## Build It

With [packer installed](http://www.packer.io/intro/getting-started/setup.html):

    git clone https://github.com/sjourdan/ubuntu-1404-ucp-packer
    cd ubuntu-1404-ucp-packer
    make
    make install

`make install` will add the completed boxes to your local Vagrant boxes.

## Builds

- `1404-min` has a minimal set of packages required to run on Virtualbox and VMware. This is a good base for testing automated installs because it assumes almost nothing beyond the base operating system.
