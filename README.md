# Running Vivado on MacOS

Its possible to run Vivado on Mac using a virtual machine:

Execute the following in terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install vagrant
brew install virtualbox
brew install xquartz
git clone https://github.com/TylerBovenzi/VivadoMac ~/VivadoMac
cd ~/VivadoMac/box
vagrant plugin install vagrant-disksize
```

Open System Preferences > Security & Privacy > General 

and allow an Oracle Signed application

```bash
vboxmanage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-6.1.26.vbox-extpack

vagrant up
```

The VivadoMac folder will be located in your home directory

Download Vivado 2018.2 from 

[https://www.xilinx.com/member/forms/download/xef-vivado.html?filename=Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz](https://www.xilinx.com/member/forms/download/xef-vivado.html?filename=Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz)

Place the contents of the archive (all the files in the top level folder) in 

`VivadoMac/shared/install/Vivado`

Then execute the following:

```bash
cd ~/VivadoMac/box
vagrant ssh
cd /shared/install
chmod +x install.sh
sudo ./install.sh
source ~/.bashrc
```

This may open a dialog to update, for now just close this window. 

It will begin by installing some dependencies, then hang on

> *Copyright (c) 1986-2021 Xilinx, Inc. All rights reserved.*

For several minutes. This is expected.

execute Vivado by typing `vivado`

execute Logisim evolution using `logisim`

The host machine cannot access the Basys3 while the virtual machine is running