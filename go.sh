#!/bin/bash
echo "Updating and upgrading installed packages as a precaution, please wait..."
sudo apt update && sudo apt upgrade -y
echo "Installing dependencies, please wait..."
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev -y
echo "Cloning repositories, please wait..."
git clone https://github.com/pret/agbcc
git clone https://github.com/FieryMewtwo/corundum
cd agbcc
echo "Compiling corundum, please wait..."
./build.sh
./install.sh ../corundum
cd ..
cd corundum
make
echo "Done! You should now have a corundum ROM in the directory. If you can't"
echo "find it, it should be in the 'corundum' directory."
