#!/bin/sh

green="\e[0;32m\033[1m"
blue="\e[0;34m\033[1m"

function start(){
    echo -e "${green}(SoloArch) Bienvenido, este programa instalara en tu equipo zsh, además de volverse tu shell principal. (SoloArch)"
    sleep 5 
    echo -e "${green}Empezando."
    sleep 5
    paru -S zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting
    sudo pacman -S zsh lsd bat --needed --noconfirm
    sudo mkdir /usr/share/zsh/plugins/zsh-sudo
    cp .zshrc $HOME
    sudo cp .zshrc /root/
    sudo mv plugin/sudo.plugin.zsh /usr/share/zsh/plugins/zsh-sudo-plugin
    sudo mv lugin/zsh-autocomplete.plugin.zsh /usr/share/zsh/plugins/zsh-autocomplete
    sudo mv plugin/zsh-autosuggestions.zsh /usr/share/zsh/plugins/zsh-autosuggestions
    sudo mv plugin/zsh-syntax-highlighting.zsh /usr/share/zsh/plugins/zsh-syntax-highlighting
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
    echo -e "${green}Terminando."
    sleep 5
    sudo chsh -s /bin/zsh $USER
    sudo chsh -s /bin/zsh root
    sudo su
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo -e "${green}Ya esta todo listo"
    sleep 5
}
if [ "$(id -u)" == "0" ]; then
	echo -e "\n${blue}[!] No hay necesidad de ser root para usar esta utilidad${end}"
	echo
	exit 1
else
	start
fi
