# Fedora Respin
This repositories contains kickstart and build files in order to create a custom LiveCD iso file. It has been tested so far on my local Fedora machine.

## Requirements

* custom-kickstarts
* fedora-kickstarts
* spin-kickstarts
* l10n-kickstarts
* pykickstart
* lorax
* patch
* make
* qemu
* anaconda
* aria2

## Known issues
The pycdlib that is installed as a dependency contains a bug that will make lorax fail to validate the boot.iso file (https://github.com/clalancette/pycdlib/commit/6f0f7b67835eeb26ed3b045035f9b182d3fa08b0) and has been fixed in 1.12.0. If at the time of testing the pycdlib version hasn't been updated in the Fedora repositories yet you have download pycdlib and create the RPM version locally.
