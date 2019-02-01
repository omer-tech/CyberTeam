
#import subprocess to be able to use the cmd interface
import subprocess
import os


networkid = str(input("*****Welcome to ping sweep***** \n""Whats the firt three octets? e.g. 10.1.0. or 192.168.1. \n"))
starthost = int(input("Fair enough...\n" "Whats the last octet starting point? \n "))
endhost = int(input("and last octet ending?\n"))



none = open(os.devnull, 'w')


live=[]
for x in range(starthost, endhost):
    ip = networkid + str(x)
    
    response = subprocess.run('ping -n 1 -w 4 ' + ip, stdout=none)

    if response.returncode == 0:
        live.append(ip)
print("Active Hosts:")
print(live)