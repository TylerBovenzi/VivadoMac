#/bin/bash
sudo apt update
sudo apt install -y libxrender1 libxtst6 libxi6
Vivado/xsetup --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA --batch Install --config install_config.txt
echo "source /opt/Xilinx/Vivado/2018.2/settings64.sh" >> /home/vagrant/.bashrc
sudo ln -s /opt/Xilinx/Vivado/2021.1/lnx64/tools/gcc/bin/x86_64-unknown-linux-gnu-gcc /usr/bin/gcc

cd /opt/Xilinx/Vivado/2018.2
cd ./data/xicom/cable_drivers/lin64/install_script/install_drivers
sudo ./install_drivers


