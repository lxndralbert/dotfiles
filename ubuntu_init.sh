#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install git vim zsh hey transmission curl wget tmux fonts-firacode apt-transport-https gnupg2 cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3 python3-pip pipenv figlet lolcat -y

cd /Downloads

echo Install Google Chrome\n 

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

echo Install Oh My Zsh!\n 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo Install Go\n 

wget https://golang.org/dl/go1.15.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.5.linux-amd64.tar.gz

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc

echo Install Docker\n 

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker alexander

echo Install Rust\n 

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://github.com/alacritty/alacritty.git
cd alacritty

echo Install kubectl\n 

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

snap install doctl

git config --global user.name "Alexander Albert"
git config --global user.email alexander@vilkrig.com
