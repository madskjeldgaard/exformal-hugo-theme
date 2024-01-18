# Exformal

Exformal is a theme for [Hugo](https://gohugo.io/), designed to showcase music releases for a record label, more specifically Exformal Records.

Written by Mads Kjeldgaard 2024.

## Features

- Custom "release" content type organizes releases with metadata
- Easily insert media via shortcodes for bandcamp, vimeo, youtube, mixcloud and soundcloud
- Insert 3D graphics via shortcodes for threejs patches
- Easy to theme directly from the site's config.toml file
- Cloaks emails using [cloakemail shortcode](https://github.com/martignoni/hugo-cloak-email)

## Usage

To easily add a release, simply run the bash script

```bash
chmod +x ./scripts/add_release.sh # Only needed once
./scripts/add_release.sh
```

## Shortcodes

### Media 
#### Audioplayer

To embed an audio player, use the following shortcode format. The audio player will optionally show title, author and a tracklist

```html
{{< audioplayer src="path/to/audio.mp3" title="Song Title" author="Artist Name" tracklist="1. First Track<br>2. Second Track" >}}
```

Parameters
- src: The URL or path to the audio file.
- title (optional): The title of the audio track.
- author (optional): The name of the author or artist.
- tracklist (optional): HTML-formatted list of tracks. Use <br> for line breaks.

#### Bandcamp album

```html
{{< bandcamp "album_id" >}}
```

#### Mixcloud

The mixcloud shortcode takes the user name and the mix name as arguments. For example, to embed the mix "RL11224 The Stranger's Guest Mix" by Rhythm Lab, use the following shortcode:

```html
{{< mixcloud "/rhythmlab/rl11224-the-strangers-guest-mix/" >}}
```
#### Soundcloud

Use the track-id from Soundcloud. Go to a soundcloud track, press share, embed and find the number after `/track/` and insert with shortcode:

```html
{{< soundcloud-track "1405272364" >}}
```

## Installation

## Configuration
