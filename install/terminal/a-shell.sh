# Configure the bash shell using Omakubora defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/omakubora/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/omakubora/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakubora defaults
cp ~/.local/share/omakubora/configs/inputrc ~/.inputrc
