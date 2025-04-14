#!/bin/bash

# Frissítsük a csomaglistát és telepítsük a szükséges csomagokat
sudo apt update
sudo apt upgrade -y
sudo apt install -y curl wget apt-transport-https software-properties-common gnupg

# Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# BreakTime
sudo apt install -y libappindicator3-1 libnotify-bin
wget https://github.com/hovancik/stretchly/releases/download/v1.3.0/stretchly_1.3.0_amd64.deb
sudo dpkg -i stretchly_1.3.0_amd64.deb
sudo apt install -f -y

# DevKinsta
wget https://downloads.devkinsta.com/linux/devkinsta-linux.deb
sudo dpkg -i devkinsta-linux.deb
sudo apt install -f -y

# VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y

# Firefox Developer Edition
wget -O ~/firefox-developer.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64"
tar -xjf ~/firefox-developer.tar.bz2 -C ~/ && rm ~/firefox-developer.tar.bz2
sudo mv ~/firefox /opt/firefox-developer
sudo ln -s /opt/firefox-developer/firefox /usr/local/bin/firefox-developer
cat <<EOF | sudo tee /usr/share/applications/firefox-developer.desktop
[Desktop Entry]
Name=Firefox Developer Edition
GenericName=Web Browser
Exec=/opt/firefox-developer/firefox %u
Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;
StartupNotify=true
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;
EOF

# IntelliJ IDEA
sudo snap install intellij-idea-community --classic

# PyCharm
sudo snap install pycharm-community --classic

# Filezilla
sudo apt install -y filezilla

# DevToys
wget https://github.com/veler/DevToys/releases/download/v0.1.0/DevToys_Linux_x64.deb
sudo dpkg -i DevToys_Linux_x64.deb
sudo apt install -f -y

# FlameShot
sudo apt install -y flameshot

# KdenLive
sudo apt install -y kdenlive

# Github Desktop
wget https://github.com/shiftkey/desktop/releases/download/release-2.9.4-linux1/GitHubDesktop-linux-2.9.4-linux1.deb
sudo dpkg -i GitHubDesktop-linux-2.9.4-linux1.deb
sudo apt install -f -y

# Haruna
sudo add-apt-repository ppa:haruna-video-player/ppa
sudo apt update
sudo apt install -y haruna

# VLC
sudo apt install -y vlc

# InkScape
sudo apt install -y inkscape

# Krita
sudo apt install -y krita

# Gimp
sudo apt install -y gimp

# Obsidian
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v0.12.19/Obsidian-0.12.19.AppImage
chmod +x Obsidian-0.12.19.AppImage
sudo mv Obsidian-0.12.19.AppImage /usr/local/bin/obsidian

# Ubuntu Cleaner
sudo add-apt-repository ppa:gerardpuig/ppa
sudo apt update
sudo apt install -y ubuntu-cleaner

# Website Auditor
wget https://www.link-assistant.com/download/web-auditor.tar.gz
tar -xzf web-auditor.tar.gz
sudo mv WebsiteAuditor /opt/
sudo ln -s /opt/WebsiteAuditor/WebsiteAuditor /usr/local/bin/website-auditor

# Tweaks
sudo apt install -y gnome-tweaks

# Lepton
wget https://github.com/hackjutsu/Lepton/releases/download/v1.9.0/Lepton-1.9.0.AppImage
chmod +x Lepton-1.9.0.AppImage
sudo mv Lepton-1.9.0.AppImage /usr/local/bin/lepton

# OBS Studio
sudo apt install -y obs-studio

# Takarítás
sudo apt autoremove -y
sudo apt clean

echo "Minden alkalmazás telepítve!"
