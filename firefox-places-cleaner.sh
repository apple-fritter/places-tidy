#!/bin/bash

echo "This script will remove extraneous metadata from the Firefox Places database file."
echo "Please enter the path to your Firefox profile directory (e.g. ~/.mozilla/firefox/xxxxxx.default):"
read profile_dir

if [ -z "$profile_dir" ]; then
  echo "Error: Empty profile directory path."
  exit 1
fi

if [ ! -d "$profile_dir" ]; then
  echo "Error: Directory '$profile_dir' not found."
  exit 1
fi

places_file="$profile_dir/places.sqlite"

if [ ! -f "$places_file" ]; then
  echo "Error: File '$places_file' not found."
  exit 1
fi

echo "Found places file: $places_file"

backup_file="$profile_dir/places_backup.sqlite"
new_file="$profile_dir/new_places.sqlite"

echo "Creating backup of the original places file..."
cp "$places_file" "$backup_file"

echo "Removing extraneous metadata from the places file..."
sqlite3 "$places_file" <<EOF
CREATE TABLE new_moz_places AS SELECT url, title FROM moz_places;
DROP TABLE moz_places;
ALTER TABLE new_moz_places RENAME TO moz_places;
VACUUM;
EOF

echo "Exporting new places file with only the moz_places table..."
sqlite3 "$places_file" ".clone $new_file"

echo "Replacing original places file with the new one..."
mv "$new_file" "$places_file"

echo "Done!"
