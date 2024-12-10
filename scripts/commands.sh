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
  read -p "Enter Release Cover URL: " releasecover
  read -p "Enter Alt Cover URL: " altcover
  read -p "Enter Catalogue Number: " releasecatnum
  read -p "Enter Artist Website: " artistwebsite
  read -p "Enter Buy Link: " buylink
  read -p "Enter Audio File URL: " releaseaudio
  read -p "Enter Audio Title: " releaseaudiotitle
  read -p "Enter About the Release: " releaseabout
  read -p "Enter Catalogue Text: " releasecattext
  read -p "Enter Metadata (comma-separated): " metadata
  read -p "Enter Credits (comma-separated): " credits
  read -p "Enter Tracklist (comma-separated): " tracklist
  read -p "Enter Additional Link Name: " additionalLinkName
  read -p "Enter Additional Link URL: " additionalLinkURL

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
draft=false

# Images
releasecover = \"$releasecover\"
altcover = \"$altcover\"

# Release basics
releasetitle = \"$album_name\"
releaseartist = \"$artist_name\"
releaseyear = \"$release_year\"
releaseformat = \"$format\"

releasecatnum = \"$releasecatnum\"
artistwebsite = \"$artistwebsite\"

buylink=\"$buylink\"
date = \"$date\"

# Audio player
releaseaudio=\"$releaseaudio\"
releaseaudiotitle=\"$releaseaudiotitle\"

# -------------- METADATA ----------------------

# About the release (short text, a few paragraphs)
releaseabout = \"$releaseabout\"

# Catalogue text (1-2 lines)
releasecattext = \"$releasecattext\"

# Metadata
metadata = [
    \"Artist: $artist_name\",
]

# Credits
credits = [
    $(echo $credits | sed 's/,/\", \"/g' | sed 's/^/\"/' | sed 's/$/\"/')
]

# Tracks
tracklist = [
    $(echo $tracklist | sed 's/,/\", \"/g' | sed 's/^/\"/' | sed 's/$/\"/')
]

# Buttons
[[additionalLinks]]
name = \"$additionalLinkName\"
url = \"$additionalLinkURL\"

+++

$description
" > $file

  echo "Release post created: $file"
}

function add_portfolio() {
  read -p "Enter Title: " title
  read -p "Enter Year: " year
  read -p "Enter Categories (comma-separated): " categories
  read -p "Enter Date (YYYY-MM-DD): " date
  read -p "Enter Draft (true/false): " draft
  read -p "Enter TOC (true/false): " toc
  read -p "Enter Cover URL: " cover
  read -p "Enter Description: " description

  filename=$(echo "${title}" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]/-/g')

  echo "---" > "content/portfolio/${filename}.md"
  echo "title: \"${title}\"" >> "content/portfolio/${filename}.md"
  echo "year: ${year}" >> "content/portfolio/${filename}.md"
  echo "categories: [$(echo ${categories} | sed 's/,/, /g')]" >> "content/portfolio/${filename}.md"
  echo "date: ${date}" >> "content/portfolio/${filename}.md"
  echo "draft: ${draft}" >> "content/portfolio/${filename}.md"
  echo "toc: ${toc}" >> "content/portfolio/${filename}.md"
  echo "cover: ${cover}" >> "content/portfolio/${filename}.md"
  echo "description: \"${description}\"" >> "content/portfolio/${filename}.md"
  echo "---" >> "content/portfolio/${filename}.md"

  echo "Portfolio post created: content/portfolio/${filename}.md"
}

# Add the new command to the case statement
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
    add_portfolio)
      add_portfolio
      shift
      ;;
    -h|--help)
      usage
      shift
      ;;
  esac
done
