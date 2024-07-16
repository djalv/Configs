#! /bin/bash -x

# Make important dirs
cd /home/cupim
mkdir Python-projects
cd Python-projects
python3 -m venv venv3
cd /home/cupim

# Install python3
sudo apt install python3 -y
sudo apt install python3-venv -y

# Install neovim and config file
sudo apt install neovim -y
mkdir /.config/nvim
wget -O /.config/nvim https://raw.githubusercontent.com/NeuralNine/config-files/master/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install Brave
sudo sudo apt install curl -y
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# Install npm and node
sudo apt install npm -y
npm install node -y

# Install Docker
sudo apt install docker.io -y

# Install userful tools
sudo apt install gobuster -y
sudo apt install neofetch -y
sudo apt install leafpad

# Install Git and seting up
sudo apt install git -y

# Install vscode
sudo apt install code-oss
