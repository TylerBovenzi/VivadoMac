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
vagrant up
```

The VivadoMac folder will be located in your home directory

Download Vivado 2018.2 from 

[https://www.xilinx.com/member/forms/download/xef-vivado.html?filename=Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz](https://www.xilinx.com/member/forms/download/xef-vivado.html?filename=Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz)

Place the contents of the archive (all the files in the top level folder) in 

`VivadoMac/shared/install/Vivado`

Then execute the following

```bash
vagrant ssh
cd /shared/install
chmod +x install.sh
sudo ./install.sh
```
This may open a dialog to update, for now just close this window. 
To run:

```bash
cd /opt/Xilinx/Vivado/2018.2/bin/
sudo ./vivado
```
