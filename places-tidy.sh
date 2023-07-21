#!/bin/bash

# Name of the SQLite database file
db_file="places.sqlite"

# Execute DELETE commands for each table
echo "Emptying table: moz_anno_attributes"
sqlite3 "$db_file" "DELETE FROM moz_anno_attributes;"

echo "Emptying table: moz_annos"
sqlite3 "$db_file" "DELETE FROM moz_annos;"

echo "Emptying table: moz_bookmarks_deleted"
sqlite3 "$db_file" "DELETE FROM moz_bookmarks_deleted;"

echo "Emptying table: moz_inputhistory"
sqlite3 "$db_file" "DELETE FROM moz_inputhistory;"

echo "Emptying table: moz_items_annos"
sqlite3 "$db_file" "DELETE FROM moz_items_annos;"

echo "Emptying table: moz_keywords"
sqlite3 "$db_file" "DELETE FROM moz_keywords;"

echo "Emptying table: moz_meta"
sqlite3 "$db_file" "DELETE FROM moz_meta;"

echo "Emptying table: moz_origins"
sqlite3 "$db_file" "DELETE FROM moz_origins;"

echo "Emptying table: moz_places_metadata_search_queries"
sqlite3 "$db_file" "DELETE FROM moz_places_metadata_search_queries;"

echo "Emptying table: moz_places_metadata"
sqlite3 "$db_file" "DELETE FROM moz_places_metadata;"

echo "Emptying table: moz_places"
sqlite3 "$db_file" "DELETE FROM moz_places;"

echo "Emptying table: moz_previews_tombstones"
sqlite3 "$db_file" "DELETE FROM moz_previews_tombstones;"

echo "All specified tables have been emptied."
