# This script creates a new release post with front matter in the correct location
#
#!/bin/zsh

function usage() {
  echo "Usage: $0 <command>"
  echo "Commands:"
  echo "  add_release"
  echo "  add_artist"
  exit 1
}

function add_artist(){
  read -p "Enter Artist Name: " artistname
  read -p "Enter Artist Bio: " artistbio

  filename=$(echo "${artistname}" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]/-/g')
  date=$(date +%Y-%m-%d)

  echo "+++
title = \"$artistname\"
artistname = \"$artistname\"
artistbio = \"$artistbio\"
artistphoto = \"\"
artistphotocredit = \"\"
date = \"$date\"

[[links]]
title = \"External link 1\"
url = \"https://example.com/link1\"
+++
  " > "content/artists/${filename}.md"
}

function add_release(){
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
releasecover = \"\"
releasecoverartist = \"\"
date = \"$date\"

[[links]]
title = \"External link 1\"
url = \"https://example.com/link1\"
+++

$description
" > $file

echo "Release post created: $file"
}

# Iterate over arguments
for arg in "$@"
do
  case $arg in
    add_release)
    add_release
    shift
    ;;
  fuzzy)
    fuzzy
    shift
    ;;
  -h|--help)
    usage
    shift
    ;;
  esac
done
