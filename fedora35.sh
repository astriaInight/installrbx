# Start messages
clear
echo -e "\e[1mROBLOX INSTALLER V1\e[0m"
echo " "
echo "This installer is meant for Fedora 35."
echo "Though, it may work on older versions of Fedora too."
echo " "
echo -e "\e[0;93mIf you wish to continue, please authorize the installer.\e[0m"
echo "Please note that your password may not show while you are typing."
echo " "
sudo sleep 0.1

clear

echo -e "The installer will start in 2 seconds..."

# Wait 2 seconds
sleep 2

echo "Updating repos..."
sudo dnf update -y

echo " "
echo "Adding wine repos..."

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/35/winehq.repo

echo " "
echo "Installing wine-staging..."
sudo dnf install winehq-staging

clear

echo "Installed wine version:"
wine --version

echo " "
echo "Installing winetricks..."
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/local/bin/

clear

echo "Installing grapjuice dependencies..."
sudo dnf install git python3-devel python3-pip cairo-devel gobject-introspection-devel cairo-gobject-devel dbus-glib-devel make xdg-utils

echo "Installing grapejuice..."
git clone https://gitlab.com/brinkervii/grapejuice.git
cd grapejuice
./install.py

clear

# Run python mouse patch and delete py file after
echo "Patching Roblox mouse..."
sudo dnf install p7zip -y
curl https://pastebin.com/raw/5SeVb005 > "mousepatch.py"
python3 mousepatch.py
rm mousepatch.py

clear

echo "Done installing!"

echo "Opening grapejuice..."
grapejuice gui & sleep 2 && bg && disown
