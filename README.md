This is a shell script designed to remove extraneous metadata from the Firefox Places database file, resulting in a smaller file size. The script exports a new places.sqlite file containing only the url and title columns from the moz_places table, which are the essential data for browsing history.

#Requrements
The script requires the following to be installed:
* Bash shell
* SQLite command-line tool

It was tested on Firefox version 94.0.2 and macOS Big Sur version 11.6.1.

# Usage
To use the script, you need to download the '''firefox-places-cleaner.sh''' script and run it from the terminal. When prompted, enter the path to your Firefox profile directory. The script will create a backup of your original places.sqlite file, remove the extraneous metadata, and export a new places.sqlite file with only the essential data. The new file will replace the original one.

The script can be useful for reducing the size of your Firefox profile by removing extraneous metadata from the Places database or extracting a list of URLs and titles from your Firefox history for web scraping, data analysis, or other purposes.

# Disclaimer
It's important to use this script at your own risk and make a manual backup of the original places.sqlite file before running the script. Firefox may also change the format of the Places database in future versions, which could make this script incompatible.
