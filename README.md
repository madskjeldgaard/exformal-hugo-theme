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

To easily add a release or an artist or something else, simply run the included bash script and answer the questions. The script will create a new release in the content/releases directory, and add the necessary metadata.

```bash
./scripts/commands.sh -h
```

## Shortcodes

#### Quotes

The quote shortcode enables the embedding of quotes in your Hugo site content. This shortcode will optionally show the author and the title of the book. The text supports being marked up with html.

```html
{{< quote text="This is the quote text. and here is some more text for the text so that you can really see it in action." author="Author Name" title="Book Title" url="https://dr.dk">}}
```

#### Responsive image
The responsiveimage shortcode enables the embedding of responsive images in your Hugo site content. This shortcode dynamically resizes images for various viewport sizes and supports optional captions.

```html 
{{< image src="image.jpg" alt="Descriptive text" caption="Image caption here" >}}
```
##### Parameters
- src (required): Path to the image file. This can be a relative path from the static directory or from your page bundle.
- alt (optional): Alternative text for the image, providing a description for screen readers and when the image cannot be displayed. Defaults to "picture".
- caption (optional): A caption for the image, which will be displayed below the image.

##### Features
- Responsive Design: Automatically resizes images based on the device's screen size.
- Srcset for Optimal Loading: Uses different image sizes for various viewport widths to optimize loading times.
- Lazy Loading: Implements loading="lazy" for better performance, as images are loaded only when they are about to enter the viewport.
- Optional Captions: Allows the addition of a caption below the image.

### Media 
#### Audioplayer

To embed an audio player, use the following shortcode format. The audio player will optionally show title, author and a tracklist

```html
{{< audioplayer src="path/to/audio.mp3" title="Song Title" author="Artist Name" tracklist="1. First Track<br>2. Second Track" >}}
```

Parameters
- `src`: The URL or path to the audio file.
- `title` (optional): The title of the audio track.
- `author` (optional): The name of the author or artist.
- `tracklist` (optional): HTML-formatted list of tracks. Use `<br>` for line breaks.

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
