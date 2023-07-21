# places-tidy

This is a simple shell script that empties specific tables from the Firefox Places database file (`places.sqlite`), resulting in a smaller file size. The script clears unnecessary data from the specified tables, reducing the storage footprint of the database while keeping the essential browsing history intact.

## Prerequisites

This script requires the following tools:
* Bash shell (tested on Bash 4.4.20)
* SQLite command-line tool (tested on SQLite 3.31.1)

This script was tested on Firefox version 94.0.2 and macOS Big Sur version 11.6.1.

### Usage

1. Download the `places-tidy.sh` script to your computer.
2. Open a terminal window and navigate to the directory where the script is located.
3. Run the script by typing `./places-tidy.sh`, and follow the prompts.
   * The script will empty the specified tables in the `places.sqlite` file, which includes the following tables:
     - `moz_anno_attributes`
     - `moz_annos`
     - `moz_bookmarks_deleted`
     - `moz_inputhistory`
     - `moz_items_annos`
     - `moz_keywords`
     - `moz_meta`
     - `moz_origins`
     - `moz_places_metadata_search_queries`
     - `moz_places_metadata`
     - `moz_places`
     - `moz_previews_tombstones`
4. The script will create a backup of your original `places.sqlite` file before modifying it.
5. The resulting `places.sqlite` file will be exported to your Firefox profile directory as `new_places.sqlite`.
6. The script will replace your original `places.sqlite` file with the new, smaller one, containing the specified tables emptied of data.
7. You're done!

Note that the script modifies the `places.sqlite` file in place, so any changes made to the file after the last Firefox session will be lost. Also, Firefox should be closed when running the script to avoid conflicts.

Use Cases

Here are some possible use cases for this script:
* Reduce the size of your Firefox profile by removing unnecessary data from specific tables in the Places database.
* Keep essential browsing history intact while clearing out sensitive or unused data.
* Extract a list of URLs and titles from your Firefox history with unnecessary metadata removed, suitable for web scraping, data analysis, or other purposes.

## [Disclaimer](DISCLAIMER)

**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose, and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages, or other liability, whether in an action of contract, tort, or otherwise, arising from, out of, or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

## License

These files released under the [MIT License](LICENSE).
