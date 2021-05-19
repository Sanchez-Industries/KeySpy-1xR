#!/usr/bin/python3
#coding: utf-8
import os
import keyboard
from multiprocessing import Process
def process_1():
    while True:
        recorded = keyboard.record(until='RETURN')
        print(str(recorded))
p = Process(target=process_1)
p.start()
p.join()