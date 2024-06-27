#! /bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "You are not the root"
	exit
fi

cd /home/cupim

set -x
# Install Brave
apt install curl -y

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

apt update -y

apt install brave-browser -y

# Install neovim and config file
apt install neovim -y
mkdir /.config/nvim
wget -O /.config/nvim https://github.com/NeuralNine/config-files/blob/master/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install python3
apt install python3 -y
apt install python3-venv -y

# Install npm and node
apt install npm -y
npm install node -y

# Install Docker
apt install docker.io -y

mkdir Python-projects
cd Python-projects
python3 -m venv venv3
cd /home/cupim

# Install userful tools
apt install gobuster -y
apt install neofetch -y
apt install leafpad -y

# Install Git and seting up
apt install git -y

# Install vscode
apt install code-oss -y

# Correct time difference
gedit /etc/default/rcS
sudo sed -i 's/UTC=yes/UTC=no/' /etc/default/rcS
