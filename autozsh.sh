#!/bin/sh

echo "Bienvenido, este programa instalara en tu equipo zsh, ademas de que zsh sera tu shell principal."
sleep 10 
echo "Empezando."
sleep 5
sudo pacman -S zsh
mkdir ~/Escritorio/repos/
cd ~/Escritorio/repos
git clone https://github.com/genomaker48/autozsh
cd autozsh
mv .zshrc ~/
sudo mkdir /usr/share/zsh/plugins/
sudo mkdir /usr/share/zsh/plugins/zsh-sudo-plugin/
sudo mkdir /usr/share/zsh/plugins/zsh-autocomplete/
sudo mkdir /usr/share/zsh/plugins/zsh-autosuggestions/
sudo mkdir /usr/share/zsh/plugins/zsh-syntax-highlighting/
sudo mkdir /usr/share/zsh/plugins/zsh-theme-powerlevel10k/
sudo mv plugins/sudo.plugin.zsh
sudo mv plugins/zsh-autocomplete.plugin.zsh
sudo mv plugins/zsh-autosuggestions.zsh
sudo mv plugins/zsh-syntax-highlighting.zsh
sudo mv plugins/zsh-theme-powerlevel10k/
echo "Introduzca su nombre de usuario por favor"
cat  >> user.sh
echo "Terminando."
sleep 5
sudo usermod -s /bin/zsh ./user.sh
echo "Ya esta todo listo"
sleep 5
