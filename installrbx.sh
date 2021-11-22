# Start messages
clear
echo -e "\e[1mROBLOX INSTALLER V1\e[0m"
echo " "
echo "This installer is meant for Ubuntu 20.04/21.04 based distros."
echo "Though, it may work on other debian based distros too."
echo " "
echo -e "\e[0;93mIf you wish to continue, please authorize the installer.\e[0m"
echo "Please note that your password may not show while you are typing."
echo " "
sudo sleep 0.1

clear

echo -e "The installer will start in 2 seconds..."

# Wait 2 seconds
sleep 2

echo " "
echo "Adding wine repos..."

# Enable 32-bit
sudo dpkg --add-architecture i386

# Add wine repos & stuff
sudo apt update

wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -

sudo apt install software-properties-common -y
sudo apt-add-repository "deb http://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main" -y

clear

# Actually install wine
# NOTE: use devel version or Roblox won't work
echo "Installing winehq-devel..."

sudo apt install --install-recommends winehq-devel -y

clear

echo "Installed wine version:"
wine --version

# Install grapejuice & stuff
echo "Updating repos..."
sudo apt update
sudo apt upgrade -y

echo "Installing grapejuice dependencies..."
sudo apt install -y git python3-pip python3-setuptools python3-wheel python3-dev pkg-config libcairo2-dev gtk-update-icon-cache desktop-file-utils xdg-utils libgirepository1.0-dev gir1.2-gtk-3.0 -y

clear

echo "Downloading grapejuice..."
git clone https://gitlab.com/brinkervii/grapejuice.git /tmp/grapejuice

echo "Installing grapejuice..."
cd /tmp/grapejuice
python3 ./install.py
cd /tmp/grapejuice

clear

# Run python mouse patch and delete py file after
echo "Patching Roblox mouse..."
sudo apt install p7zip-full -y
curl https://pastebin.com/raw/5SeVb005 > "mousepatch.py"
python3 mousepatch.py
rm mousepatch.py

clear

# Done message
echo "Done installing grapejuice!"
echo "Now please follow the steps to install the Roblox client."
echo " "
echo "You're almost there! ^-^"
echo "..."

sleep 2

echo "Opening grapejuice..."
# bg/disown = background/disown, allows terminal to close without closing the grapejuice gui
grapejuice gui & sleep 2 && bg && disown

touch grapejuice-tutorial.txt
echo -e "HOW TO SETUP GRAPEJUICE

1. Select the 'Maintenance' tab.
2. (Optional) Select 'Install FPS Unlocker' if you would like to unlock your Roblox Client's FPS. This may not show anything when you install it, so don't be worried if it looks like nothing happened.
3. (Important!) Restart your device.
4. Now, you can play any Roblox game normally. Just make sure to always allow the website to open the client if it asks.

NOTES:
If you are having performance issues, it is recommended that you set the FFlags to disable Direct3D and prefer OpenGL.

That's all, really.
Now you can close/delete this file if you want." > grapejuice-tutorial.txt

# Open text file and close terminal
clear
set -m
sudo gedit grapejuice-tutorial.txt & sleep 2 && bg && disown && clear
sleep 2
exit
