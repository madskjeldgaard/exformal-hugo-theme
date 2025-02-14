+++
title = "{{ replace .Name "-" " " | title }}"
draft = true

# Images
images = "/images/covers/default.png"
altcover = "/images/covers/default.png"

# Release basics
releasetitle = "{{ replace .Name "-" " " | title }}"
releaseartist = "Artist Name"
releaseyear = "Year"
releaseformat = "Format"

releasecatnum = "EX002"
artistwebsite = "https://madskjeldgaard.dk"

buylink = "https://exformalrecords.bandcamp.com"
date = "{{ .Date }}"

# Audio player
releaseaudio = "/sound/default.mp3"
releaseaudiotitle = "Audio Title"

# -------------- METADATA ----------------------

# About the release (short text, a few paragraphs)
description = "Description of the release."

# Catalogue text (1-2 lines)
releasecattext = "Catalogue text."

# Metadata
metadata = [
    "Artist: Artist Name",
    "Title: {{ replace .Name "-" " " | title }}",
    "Release date: Release Date",
    "Digital format: Format",
    "Physical release: Physical Release Description",
    "Catalogue number: EX002",
    "Total running time: Running Time",
]

# Credits
credits = [
    "Recorded at: Recording Location",
    "Text and liner notes: Author",
    "Composed, recorded, mixed and mastered by: Author",
    "Instruments: Instruments Used",
    "Design: Designer",
    "Thanks: Acknowledgements",
]

# Tracks
tracklist = [
    "1. Track Title (Duration)",
    "2. Track Title (Duration)",
    "3. Track Title (Duration)",
]

# Buttons
# You can have several of these, or none, just comment them out if not needed.
[[additionalLinks]]
name = "Link Name"
url = "https://linkurl.com"

+++

Content goes here.

{{< imgh src="covers/defaults/default1.png" alt="Test image" caption="Just a test image" >}}  
