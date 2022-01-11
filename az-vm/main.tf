variable "prefix" {
  default = "tfvm"
}

resource "azurerm_resource_group" "tfvm" {
  name     = "${var.prefix}-rg"
  location = "East US 2"
}

resource "azurerm_virtual_network" "tfvm" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.tfvm.location
  resource_group_name = azurerm_resource_group.tfvm.name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.tfvm.name
  virtual_network_name = azurerm_virtual_network.tfvm.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "tfvm" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.tfvm.location
  resource_group_name = azurerm_resource_group.tfvm.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "tfvm" {
  name                  = "${var.prefix}-vm"
  location              = azurerm_resource_group.tfvm.location
  resource_group_name   = azurerm_resource_group.tfvm.name
  network_interface_ids = [azurerm_network_interface.tfvm.id]
  vm_size               = "Standard_DS1_v2"

  # comment this line to protect the OS disk and data automatically when deleting the VM
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "DontLogin985!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "test"
  }
}
#added
