#!/bin/bash

# install dependencies
echo "Installing Dependencies..."
sudo apt update;
sudo apt install python3-pyqt5 python3-pyqt5.qtwebengine -y;

# Define the paths
APP_NAME="notion"
APP_BIN="/usr/local/bin/$APP_NAME"
APP_ICON="/usr/local/share/icons/notion.png"
DESKTOP_ENTRY="/usr/share/applications/notion.desktop"

# Copy the application script to /usr/local/bin
echo "Installing $APP_NAME to $APP_BIN..."
sudo cp app.py $APP_BIN
sudo chmod +x $APP_BIN

# Copy the icon to /usr/local/share/icons
echo "Installing icon to $APP_ICON..."
sudo mkdir -p /usr/local/share/icons
sudo cp notion.png $APP_ICON

# Copy the desktop entry to /usr/share/applications
echo "Installing desktop entry to $DESKTOP_ENTRY..."
sudo cp notion.desktop $DESKTOP_ENTRY

echo "Installation complete!"