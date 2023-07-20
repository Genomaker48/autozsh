#!/bin/sh

green="\e[0;32m\033[1m"
blue="\e[0;34m\033[1m"

function start(){
    echo -e "${green}(SoloArch) Bienvenido, este programa instalara en tu equipo zsh, además de volverse tu shell principal. (SoloArch)"
    sleep 10 
    echo -e "${green}Empezando."
    sleep 5
    sudo pacman -S zsh lsd bat nerd-fonts awesome-nerd-fonts --needed --noconfirm
    mv .zshrc ~/
    sudo mkdir /usr/share/zsh/plugins/
    sudo mkdir /usr/share/zsh/plugins/zsh-sudo-plugin/
    sudo mkdir /usr/share/zsh/plugins/zsh-autocomplete/
    sudo mkdir /usr/share/zsh/plugins/zsh-autosuggestions/
    sudo mkdir /usr/share/zsh/plugins/zsh-syntax-highlighting/
    sudo mv plugin/sudo.plugin.zsh /usr/share/zsh/plugins/zsh-sudo-plugin
    sudo mv plugin/zsh-autocomplete.plugin.zsh /usr/share/zsh/plugins/zsh-autocomplete
    sudo mv plugin/zsh-autosuggestions.zsh /usr/share/zsh/plugins/zsh-autosuggestions
    sudo mv plugin/zsh-syntax-highlighting.zsh /usr/share/zsh/plugins/zsh-syntax-highlighting
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
    echo -e "${green}Terminando."
    sleep 5
    sudo usermod -s /bin/zsh $USER
    sudo chsh -s /bin/zsh $USER
    sudo usermod -s /bin/zsh root
    sudo chsh -s /bin/zsh root
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
