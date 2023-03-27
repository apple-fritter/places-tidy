# Purge Metadata from Firefox Places Database
This script removes extraneous metadata from the Firefox Places database file places.sqlite, resulting in a smaller file size.

Usage
Make sure you have Firefox closed before running the script.
Download the purge_metadata.sh script and save it to a folder of your choice.
Open a terminal and navigate to the folder where the purge_metadata.sh script is located.
Make the script executable by running the command chmod +x purge_metadata.sh.
Run the script by typing ./purge_metadata.sh in the terminal.
Wait for the script to complete. It will create a backup of the original places.sqlite file (called places_backup.sqlite) and a new, smaller version of the file (called places.sqlite).
Replace the original places.sqlite file with the new one by moving or renaming the files. For example:

bash:
mv places.sqlite places_old.sqlite
mv new_places.sqlite places.sqlite


How it works
The script uses the SQLite command-line tool to modify the places.sqlite file. Here are the steps it performs:
Makes a backup of the original places.sqlite file.
Opens the SQLite command-line tool.
Creates a new table called new_moz_places with only the url and title columns.
Drops the original moz_places table and renames the new one to moz_places.
Exports the new places.sqlite file with only the moz_places table.
Closes the SQLite shell.
Replaces the original places.sqlite file with the new one.

Disclaimer
This script modifies the Firefox Places database file. Use it at your own risk, and make sure to backup your data before running the script. The script has been tested on Firefox version 94.0.1 on Linux, but may not work on other platforms or Firefox versions.
