+++
draft = true

title = "{{ replace .Name "-" " " | title }}"
artistname = "{{ replace .Name "-" " " | title }}"
artistbio = "A music composer."
artistphoto = "/images/artists/default.jpg"
artistphotocredit = ""
date = "{{ .Date }}"

[[links]]
title = "Artist Website"
url = "https://artistwebsite.com"

# [[links]]
# title = "External link 2"
# url = "https://example.com/link2"

+++

Info about artist
