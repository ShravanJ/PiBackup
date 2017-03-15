#!/bin/bash

#Replace 'shravan' with your username
#Modify so that your desired directories are backed up. Use this as a reference.
#In this case I backup my /www/ webpages dir and my home directory and copy to a mounted USB drive (mounted at point /mnt/usb in this case).
#You can also modify the status information based on what files/directories you are backing up

echo "PiBackup v1.0.1"
echo "Starting backup..."

cd /home/
echo "Creating archive for home directory..."
sudo tar czf shravan_home.tar.gz shravan
echo "Created archive for home directory"

cd /var/
echo "Creating archive for web pages..."
sudo tar czf webpages.tar.gz www
echo "Created archive for web pages"
echo "Creating archive for build server..."
sudo tar czf build.tar.gz build
echo "Created archive for build server"
echo "Moving archives to home..."
sudo mv /var/webpages.tar.gz /home/
sudo mv /var/build.tar.gz /home/
echo "Moved archives to home"

cd /home/
echo "Moving archives to external storage..."
sudo mv webpages.tar.gz /mnt/usb
sudo mv shravan_home.tar.gz /mnt/usb
sudo mv build.tar.gz /mnt/usb
echo "Archives moved"

echo "Backup completed"