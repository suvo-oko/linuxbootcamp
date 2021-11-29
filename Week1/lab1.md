# Create a Linux virtual machine with the Azure CLI

## Launch Azure Cloud Shell

For this lab, I used WSL running Ubuntu 20.04.
I installed the Azure CLI for Linux with the following command:

`curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash`

This is a very handy way to install the Azure CLI for Linux, since it's all done with a single command in a single line.

[Intall the Azure CLI on Linux](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux)

### Connecting to Azure

To connect to Azure, we run `az login`. This command will open a new browser window, where you need to sign in to your Microsoft account.

## Create a resource group

In Azure, a resource group is a container that holds related resources for an Azure solution. It can include all the resources for the solution or only those resources you want to manage as a group.
All resources must belong to a resource group.
To create a resource group with Azure CLI, we run the following command:

`az group create -n resourcegroupname -l location`

For this lab, I created a resource group named **cloudskillsrg** located in **westeurope**, which is the region closest to me.

`az group create -n cloudskillsrg -l westeurope`
