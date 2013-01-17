#!./shell/bash
#
# How to use:
# Update REPO URL if needed then
# issue ./nameofthisscript modname
#
# Example:
# ./mtmodinstall.sh industrial
#
# License: 
# Version: 1

# Chane below to the location of your minetest mods folder
# Use a full path for ease of config
INSTALLLOC="./mods/minetest"

# Putting the location of this script into a variable
SLOC=$(pwd)

# Getting current date
NOW=$(date +"%m_%d_%Y--%H-%M")

# Change REPO URL to match your preferred repo
REPO="https://raw.github.com/TheZenKitteh/minetest-bashmodinstaller/master/Repo/"

# Fetching packages list
rm ./packages.txt
wget "$REPO"packages.txt

# Get full mod name for use in URL and extraction
MOD=$(grep -i "$1" ./packages.txt)
 
# fetching desired package
wget "$REPO""$MOD"

# Backing up old mod
cd "$INSTALLLOC"
"$SLOC"/Mod-Packing-Directory/apps/7z.exe a -t7z -mx9 "$SLOC"/Mod-Backups/"$1""$NOW".7z "$1"
rm -rf "$1"
cd "$SLOC"

# Extracting mod to mod folder
./Mod-Packing-Directory/apps/7z.exe x "$MOD" -o"$INSTALLLOC"

# Cleaning up
rm "$MOD"

echo "All done.. check to make sure mod is indeed installed at \"$INSTALLLOC\""
