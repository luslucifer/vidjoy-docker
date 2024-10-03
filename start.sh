#!/bin/bash

# Pull the latest images for the services
docker-compose -f docker-compose.prod.yml up -d 

# Function to install xrandr if it's not installed
install_xrandr() {
    if command -v apt-get &> /dev/null; then
        echo "Installing xrandr using apt-get..."
        sudo apt-get update && sudo apt-get install -y x11-xserver-utils
    elif command -v yum &> /dev/null; then
        echo "Installing xrandr using yum..."
        sudo yum install -y xorg-x11-utils
    elif command -v pacman &> /dev/null; then
        echo "Installing xrandr using pacman..."
        sudo pacman -Syu xorg-xrandr
    else
        echo "No suitable package manager found. Please install xrandr manually."
        exit 1
    fi
}

# Function to check if the machine is a VPS or Dedicated Server
check_server_type() {
    # Check for virtualization information
    if grep -i -q "virtual" /proc/cpuinfo || [[ $(cat /sys/class/dmi/id/product_name) =~ (KVM|VMware|VirtualBox|Xen) ]]; then
        echo "This machine is likely a VPS."
        return 1  # VPS
    else
        echo "This machine is likely a dedicated server."
        return 0  # Dedicated Server
    fi
}

# Function to check if a display is attached
check_display_attached() {
    if command -v xrandr &> /dev/null; then
        # Using xrandr to check connected displays
        if xrandr | grep -q " connected"; then
            echo "A display is attached."
            return 0  # Display attached
        else
            echo "No display is attached."
            return 1  # No display
        fi
    else
        echo "xrandr command not found. Installing it now..."
        install_xrandr
        return 1  # Assume no display if xrandr is now installed
    fi
}

# Get the server's IP address (IPv4)
SERVER_IP=$(curl -s http://checkip.amazonaws.com)

# Ensure we retrieved the IP
if [ -z "$SERVER_IP" ]; then
    echo "Failed to retrieve the server's IP address."
    exit 1
fi

# Check the server type
check_server_type
if [ $? -eq 1 ]; then
    echo "Machine identified as VPS."
else
    echo "Machine identified as Dedicated Server."
fi

# Check if a display is attached
check_display_attached
if [ $? -eq 0 ]; then
    echo "Request will not be made as a display is attached."
    exit 0
fi

# Make a request to the Cloudflare Worker URL with the server's IP if conditions are met
