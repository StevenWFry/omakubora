#set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Omakubora is for fresh Fedora 41 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo dnf update >/dev/null
sudo dnf install -y git >/dev/null

echo "Cloning Omakubora..."
rm -rf ~/.local/share/omakubora
git clone https://github.com/StevenWFry/omakubora.git ~/.local/share/omakubora >/dev/null
#if [[ $OMAKUB_REF != "master" ]]; then
cd ~/.local/share/omakubora
	#git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
	#cd -
#fi

echo "Installation starting..."
source ~/.local/share/omakubora/install.sh
