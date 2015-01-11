#!/bin/bash

#Replace 'shravan' with your username
#Modify so that your desired directories are backed up. Use this as a reference.
#In this case I backup my /www/ webpages dir and my home directory and copy to a mounted USB drive.

cd /home/

sudo tar czf shravan_home.tar.gz shravan 


cd /var/

sudo tar czf webpages.tar.gz www

sudo mv /var/webpages.tar.gz /home/

cd /home/

sudo mv webpages.tar.gz /mnt/usb
sudo mv shravan_home.tar.gz /mnt/usb

