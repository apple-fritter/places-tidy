# Firefox Places SQLite Cleaner

This is a simple shell script that removes extraneous metadata from the Firefox Places database file (`places.sqlite`), resulting in a smaller file size. The script exports a new `places.sqlite` file containing only the `url` and `title` columns from the `moz_places` table, which are the essential data for browsing history.

## Prerequisites

This script requires the following tools:
* Bash shell (tested on Bash 4.4.20)
* SQLite command-line tool (tested on SQLite 3.31.1)

This script was tested on Firefox version 94.0.2 and macOS Big Sur version 11.6.1.

### Usage

1. Download the `firefox-places-cleaner.sh` script to your computer.
2. Open a terminal window and navigate to the directory where the script is located.
3. Run the script by typing `./firefox-places-cleaner.sh`, and follow the prompts.
   * If you provide the path to your Firefox profile directory as a command-line argument, the script will use it.
   * If you do not provide the path, the script will search for the `places.sqlite` file in the default profile directory for your operating system, and prompt you to confirm if found.
4. The script will create a backup of your original `places.sqlite` file and then remove the extraneous metadata from it.
5. The resulting `places.sqlite` file will be exported to your Firefox profile directory as `new_places.sqlite`.
6. The script will replace your original `places.sqlite` file with the new, smaller one.
7. You're done!

Note that the script modifies the `places.sqlite` file in place, so any changes made to the file after the last Firefox session will be lost. Also, Firefox should be closed when running the script to avoid conflicts.

Use Cases
Here are some possible use cases for this script:
* Reduce the size of your Firefox profile by removing extraneous metadata from the Places database.
* Extract a list of URLs and titles from your Firefox history for web scraping, data analysis, or other purposes.

## Disclaimer

Use this script at your own risk. Although the script creates a backup of your original `places.sqlite` file, it's always a good idea to make a manual backup before running any scripts that modify important files. Also, Firefox may change the format of the Places database in future versions, which could make this script incompatible.
