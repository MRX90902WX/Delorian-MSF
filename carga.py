from sys import stdout
from time import sleep
from os import system
RED, WHITE, CYAN, GREEN, END = '\033[91m', '\33[46m', '\033[36m', '\033[1;32m', '\033[0m'

system("clear")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
for i in range(101):
        sleep(0.01)
        stdout.write("\r{0}[{3}*{0}]{2} Preparando el Script... %d%%".format(GREEN, END, CYAN, RED, WHITE) % i)
        stdout.flush()
       
