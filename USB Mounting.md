Mounting a USB drive
====================

Find the block device
====================
sudo fdisk -l

Make a mount point
====================
sudo mkdir /mnt/usb

Mount the device
====================
sudo mount -t vfat (block device ie /dev/sda1) /mnt/usb

Check to see if your drive is mounted
=====================================
mount (check for a /dev/something entry) OR lsblk (check for mountpoint on /dev/something/)

