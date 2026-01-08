#!/usr/bin/env bash

# The "I Use Arch BTW" Reproduction Script
# Warning: High levels of Chad energy detected.

set -e

read -sp "[sudo] password for $USER: " PASSWORD
echo "" # New line after password input

echo "--- Cleaning up legacy junior-tier symlinks ---"
echo "$PASSWORD" | sudo -S rm -f /usr/bin/vacuumtube /usr/bin/youtube /usr/sbin/vacuumtube /usr/sbin/youtube

echo "--- Installing the Senior Dev wrapper script ---"
echo "$PASSWORD" | sudo -S install -Dm755 startvacuumtube /usr/bin/startvacuumtube

echo "--- Installing the Elite Icon ---"
echo "$PASSWORD" | sudo -S install -Dm644 vacuumtube.svg /usr/share/icons/hicolor/scalable/apps/vacuumtube.svg

echo "--- Installing Desktop Entries ---"
echo "$PASSWORD" | sudo -S install -Dm644 vacuumtube.desktop /usr/share/applications/vacuumtube.desktop
echo "$PASSWORD" | sudo -S install -Dm644 youtube.desktop /usr/share/applications/youtube.desktop
echo "$PASSWORD" | sudo -S install -Dm644 tube.desktop /usr/share/applications/tube.desktop

echo "--- Updating Icon Cache ---"
echo "$PASSWORD" | sudo -S gtk-update-icon-cache -f /usr/share/icons/hicolor 2>/dev/null || true

echo "Done. Your launcher is now over 9000% more efficient."
