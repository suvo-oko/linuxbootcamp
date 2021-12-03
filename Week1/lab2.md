# Manage Linux VMs with the Azure CLI

For this lab, I used the same VM created in the previous one.

## Understand VM images

The Azure marketplace offers many images that can be used to create VMs. To see a list of the most commonly used images, use the `az vm image list` command.

Azure supports the following distributions:
- CentOS
- Debian
- Flatcar Container Linux
- Oracle Linux
- Red Hat Enterprise Linux
- SUSE Linux Enterprise
- OpenSUSE
- Ubuntu

To see a list of Ubuntu offers, you can run the following command:

`az vm image list --offer Ubuntu --all --output table`

By adding the `all` parameter, the output will display an up-to-date list of images.
