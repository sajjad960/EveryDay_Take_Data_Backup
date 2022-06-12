#!/bin/bash
#This script need to run as a root user.
# ADMIN Area
sudo adduser admin #create user admin
sudo usermod -aG sudo admin # add admin as a sudo, here -aG meaning appent the user to a specific group

# Worker Area
sudo adduser worker