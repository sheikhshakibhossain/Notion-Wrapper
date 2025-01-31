#!/bin/bash

# Define the paths
APP_NAME="notion"
APP_BIN="/usr/local/bin/$APP_NAME"
APP_ICON="/usr/local/share/icons/notion.png"
DESKTOP_ENTRY="/usr/share/applications/notion.desktop"

# Remove the application script
echo "Removing $APP_NAME from $APP_BIN..."
sudo rm -f $APP_BIN

# Remove the icon
echo "Removing icon from $APP_ICON..."
sudo rm -f $APP_ICON

# Remove the desktop entry
echo "Removing desktop entry from $DESKTOP_ENTRY..."
sudo rm -f $DESKTOP_ENTRY

echo "Uninstallation complete!"