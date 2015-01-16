Crontab Configuration
=====================

Running backup at 12am

0 0 * * * /home/shravan/backup.sh

Subsitute /shravan/ with your username (default on Raspbian is pi)
THIS MUST BE RUN AS ROOT BECAUSE THE SCRIPT RUNS COMMANDS USING SU
