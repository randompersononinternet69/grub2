#!/usr/bin/bash
echo Welcome to the easy GRUB2 builder!
echo Getting packages
sudo apt update
sudo apt install -y --install-recommends build-essential libsdl2-2.0-0 libsdl1.2-dev libfreetype-dev libfreetype6-dev unifont autoconf automake autopoint
echo Run bootstrap...
./bootstrap
echo Configuring...
./configure
echo "Read the notice above."
echo "If this is not what you want, you might need to adjust some settings (I don't know what settings really)."
echo "Press any key to continue."
read
make
# did it exit correctly? if not, tell the user to fix it.
if [ $? -ne 0 ]; then
    echo "Build failed, check the above message. Please fix the above errors and try again."
fi