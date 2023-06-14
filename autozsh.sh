#!/bin/sh

echo "Bienvenido, este programa instalara en tu equipo zsh, ademas de que zsh sera tu shell principal."
sleep 10 
echo "Empezando."
sleep 5
sudo pacman -S zsh
mv .zshrc ~/
sudo mkdir /usr/share/zsh/plugins/
sudo mkdir /usr/share/zsh/plugins/zsh-sudo-plugin/
sudo mkdir /usr/share/zsh/plugins/zsh-autocomplete/
sudo mkdir /usr/share/zsh/plugins/zsh-autosuggestions/
sudo mkdir /usr/share/zsh/plugins/zsh-syntax-highlighting/
sudo mv plugins/sudo.plugin.zsh
sudo mv plugins/zsh-autocomplete.plugin.zsh
sudo mv plugins/zsh-autosuggestions.zsh
sudo mv plugins/zsh-syntax-highlighting.zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo "Terminando."
sleep 5
sudo usermod -s /bin/zsh $USER
echo "Ya esta todo listo"
sleep 5
