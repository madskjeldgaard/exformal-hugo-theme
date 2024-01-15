# This script creates a new release post with front matter in the correct location
#
#!/bin/bash

# Prompt for release details
read -p "Enter release date(YYYY-MM-DD): " releasedate
read -p "Enter Album Name: " album_name
read -p "Enter Artist Name: " artist_name
read -p "Enter Release Year: " release_year
read -p "Enter Format: " format
read -p "Enter Short Description: " description

# Format the filename
filename=$(echo "${artist_name}-${album_name}" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]/-/g')
date=$(date +%Y-%m-%d)
file="content/releases/${filename}.md"

# Create a new file with front matter
echo "+++
title = \"$album_name\"
releasetitle = \"$album_name\"
releaseartist = \"$artist_name\"
releaseyear = \"$release_year\"
releaseformat = \"$format\"
releasedescshort = \"$description\"
releasedate = \"$releasedate\"
date = \"$date\"

[[links]]
title = \"External link 1\"
url = \"https://example.com/link1\"
+++

$description
" > $file

echo "Release post created: $file"
