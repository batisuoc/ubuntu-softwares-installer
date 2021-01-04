
set -e

# Basic software
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
apt-get install build-essential -y && apt-get install libssl-dev -y
apt-get install gnome-tweak-tool -y && apt-get install gnome-shell-extensions -y
apt-get install software-properties-common apt-transport-https wget ca-certificates curl -y

# Install media codecs :
apt-get install ubuntu-restricted-extras libavcodec-extra -y

# Install boot manager :
apt-get update && apt-get install grub-customizer -y

# Install unikey and pinyin
apt-get install ibus-unikey ibus-pinyin -y

# Install VIM
apt-get update && apt-get install vim -y

# Install Chrome
apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome*.deb -y

# Install Visual Studio Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-get update && apt-get install -y code 

# Install net tools:
apt install net-tools -y

# Install sublime text 3 :
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update && apt-get install sublime-text -y

# Install snipping tool:
sudo add-apt-repository --yes ppa:linuxuprising/shutter
sudo apt-get update
apt-get install shutter -y

# Install Java:
apt-get update && apt-get install openjdk-8-jdk openjdk-8-jre -y

# Install Canon printer driver :
#wget https://github.com/hieplpvip/canon_printer/raw/master/canon_lbp_setup.sh
#chmod +x canon_lbp_setup.sh
#./canon_lbp_setup.sh

# Font manager
apt -y install font-manager -y

# Install flat remix themes
#add-apt-repository ppa:daniruiz/flat-remix
#apt-get update && apt-get install flat-remix -y && apt-get install flat-remix-gtk -y && apt-get install flat-remix-gnome -y

# Install gksu
cat <<EOF | tee /etc/apt/sources.list.d/artful.list
deb http://archive.ubuntu.com/ubuntu/ artful universe
EOF

apt-get update && apt-get install gksu -y
rm /etc/apt/sources.list.d/artful.list
apt-get update

# Install VLC player
apt-get install vlc -y

# Install VirtualBox
#wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
#add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
#sapt-get update && apt-get install virtualbox-6.0 -y

# Install aircrack-ng
apt-get install aircrack-ng -y

# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update && apt-get install spotify-client -y

# Install Nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts
nvm use --lts

# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt-get update && apt-get install docker-ce  -y
usermod -aG docker ${USER}
su - ${USER}
## Install Docker Compose
apt-get update && apt-get install docker-compose -y

