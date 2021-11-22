# installrbx
An SH script for installing Roblox using Grapejuice.
This script is intended for use on Ubuntu 20.04/21.04, but may work on other debian based distros too.

## How to use
### 1. Download installrbx.sh
You can download the installrbx.sh file from the releases.

### 2. Allow the file to run
![image](https://github.com/astriaInight/installrbx/blob/main/images/allowexecute.png?raw=true)
<br>
Open the file properties and enable 'Allow executing file as program' in the permissions tab.

### 3. Open the terminal
![image](https://github.com/astriaInight/installrbx/blob/main/images/openterminal.png?raw=true)
Open the terminal inside of the same directory as the sh file. Right click on blank space and select 'Open in terminal'.

### 4. Run the script
![image](https://github.com/astriaInight/installrbx/blob/main/images/runfile.png?raw=true)
Type './installrbx' and press enter to run the command.

![image](https://github.com/astriaInight/installrbx/blob/main/images/sudoperms.png?raw=true)
You may be prompted to give the script sudo permissions. This will be used to install the wine and grapejuice packages.
Type your user's password and press enter to start the installer. The password will not show while you are typing it.

### 5. Finishing the installation
![image](https://github.com/astriaInight/installrbx/blob/main/images/installerfinished.png?raw=true)
Once the installer finishes, a file with extra instructions will open.
Follow the instructions, sign in to the Roblox client and Roblox Studio, and restart your device.
Part of it mentions editing the FFlags to improve performance. We will get to that in step 6.

### 6. Editing FFlags for better performance
Open grapejuice and select 'Roblox FFlag editor'. This may open an instance of Roblox Studio. Do not close it until you have saved the FFlag edits.
![image](https://github.com/astriaInight/installrbx/blob/main/images/fflagedits.png?raw=true)
Enable these two options, click 'Save', and close both the FFlag editor and Roblox Studio.
You should now have significantly improved performance in Roblox.
