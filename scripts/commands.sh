# This script creates a new release post with front matter in the correct location
#
#!/bin/zsh

function usage() {
  echo "Usage: $0 <command>"
  echo "Commands:"
  echo "  add_release"
  echo "  add_artist"
  echo "  add_text"
  exit 1
}

function add_text()
{
  read -p "Enter Title: " title
  read -p "Enter subTitle: " subtitle
  read -p "Enter Draft: " draft

  filename=$(echo "${title}" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]/-/g')
  date=$(date +%Y-%m-%d)

  echo "+++
title = \"$title\"
subTitle = \"$subtitle\"
showTitle = true
date = \"$date\"
draft = $draft
+++

some text
" > "content/texts/${filename}.md"

}



function add_artist(){
  read -p "Enter Artist Name: " artistname
  read -p "Enter Artist Bio: " artistbio

  filename=$(echo "${artistname}" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]/-/g')
  date=$(date +%Y-%m-%d)

  artist_dir="content/artists"
  mkdir -p $artist_dir

  touch "${artist_dir}/${filename}.md"

  echo "+++
title = \"$artistname\"
artistname = \"$artistname\"
artistbio = \"$artistbio\"
artistphoto = \"\"
artistphotocredit = \"\"
date = \"$date\"
draft=true

[[links]]
title = \"External link 1\"
url = \"https://example.com/link1\"

[[links]]
title = \"External link 2\"
url = \"https://example.com/link2\"

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
target_dir="content/releases"
mkdir -p $target_dir
file="${target_dir}/${filename}.md"
touch "$file"

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

[[links]]
title = \"External link 2\"
url = \"https://example.com/link2\"
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
  add_artist)
    add_artist
    shift
    ;;
  add_text)
    add_text
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
