#/bin/bash
sudo apt update
sudo apt install -y libxtst6 libxi6 xdg-utils
sudo apt install -y libxrender1
Vivado/xsetup --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA --batch Install --config install_config.txt
echo "source /opt/Xilinx/Vivado/2018.2/settings64.sh" >> /home/vagrant/.bashrc
sudo ln -s /opt/Xilinx/Vivado/2021.1/lnx64/tools/gcc/bin/x86_64-unknown-linux-gnu-gcc /usr/bin/gcc

cd /opt/Xilinx/Vivado/2018.2
cd ./data/xicom/cable_drivers/lin64/install_script/install_drivers
sudo ./install_drivers

sudo mkdir /usr/share/desktop-directories/
sudo apt remove openjdk-8-jdk openjdk-8-jre
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
sudo apt update
sudo apt install -y zulu-14
sudo mkdir ~/logisim
sudo cp /shared/install/logisim-evolution-3.6.0-all.jar ~/logisim
sudo bash -c 'echo "java -jar ~/logisim/logisim-evolution-3.6.0-all.jar" > ~/logisim/startlogisim.sh'
sudo chmod +x ~/logisim/startlogisim.sh
sudo echo "alias logisim='~/logisim/startlogisim.sh'" >> ~/.bashrc
sudo bash -c 'echo "sudo /opt/Xilinx/Vivado/2018.2/bin/vivado" > ~/logisim/startvivado.sh'
sudo chmod +x ~/logisim/startvivado.sh
sudo echo "alias vivado='~/logisim/startvivado.sh'" >> ~/.bashrc
source ~/.bashrc
