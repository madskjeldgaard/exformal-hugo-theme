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

#### Responsive image
The responsiveimage shortcode enables the embedding of responsive images in your Hugo site content. This shortcode dynamically resizes images for various viewport sizes and supports optional captions.

```html 
{{< responsiveimage "image.jpg" alt="Descriptive text" caption="Image caption here" >}}
```
##### Parameters
- First unnamed parameter (required): Path to the image file. This can be a relative path from the static directory or from your page bundle.
- alt (optional): Alternative text for the image, providing a description for screen readers and when the image cannot be displayed. Defaults to "picture".
- caption (optional): A caption for the image, which will be displayed below the image.

##### Features
- Responsive Design: Automatically resizes images based on the device's screen size.
- Srcset for Optimal Loading: Uses different image sizes for various viewport widths to optimize loading times.
- Lazy Loading: Implements loading="lazy" for better performance, as images are loaded only when they are about to enter the viewport.
- Optional Captions: Allows the addition of a caption below the image.

##### Configuration
Make sure the following parameters are set in your site's configuration:

- site.Params.Images.maxSize: The maximum size for image resizing. Defaults to 1024 if not set.
- site.Params.Images.setSizes: An array of sizes for which to generate srcset images. For example, [400, 800, 1200].
- site.Params.Images.sizes: The sizes attribute for the <img> tag, which specifies how wide the image is expected to be on different screens.

Example Configuration (config.toml)
```toml
[Params.Images]
maxSize = 1024
setSizes = [400, 800, 1200]
sizes = "(max-width: 800px) 100vw, 800px"
```

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
- tracklist (optional): HTML-formatted list of tracks. Use `<br>` for line breaks.

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
