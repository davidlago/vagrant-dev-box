#!/bin/sh
apt-get -y update && apt-get -y upgrade
apt-get -y install git
git clone https://github.com/davidlago/dotfiles.git
apt-get -y install zsh
usermod -s /bin/zsh vagrant
su vagrant -c 'curl -L http://install.ohmyz.sh | sh'
echo "source ~/dotfiles/.zshrc-include" >> /home/vagrant/.zshrc
rm /home/vagrant/.oh-my-zsh/themes/robbyrussell.zsh-theme
ln -sf /home/vagrant/dotfiles/davidlago.zsh-theme /home/vagrant/.oh-my-zsh/themes/robbyrussell.zsh-theme
