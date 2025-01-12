# Gum is used for the Omakub commands for tailoring Omakub after the initial install
cd /tmp
GUM_VERSION="0.14.5" # Use known good version
wget -qO gum.rpm "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum_${GUM_VERSION}_aarch64.rpm"
sudo dnf install -y ./gum.rpm
rm gum.rpm
cd -
