# Exformal

Exformal is a theme for [Hugo](https://gohugo.io/).

It can be used to create a portfolio or to showcase a record label.o

See it in action [here](https://exformal.art).

Written by Mads Kjeldgaard 2024.

## Features

- Custom types:
    - Release
    - Artist profile
    - Portfolio
- Auto optimize images for faster load times
- Easy to theme directly from the site's config.toml file
- Cloaks emails using [cloakemail shortcode](https://github.com/martignoni/hugo-cloak-email)

# Usage

## Making a new release

The theme includes a release archetype, trigger it by running

```bash
hugo new releases/myrelease.md
```

This will fill out the defaults for you to work from.

## Making an artist profile
The theme includes a artist archetype, trigger it by running

```bash
hugo new artists/myartist.md
```

This will fill out the defaults for you to work from.

## Making a portfolio entry
The theme includes a portfolio archetype, trigger it by running

```bash
hugo new portfolio/myproject.md
```

This will fill out the defaults for you to work from.

## Shortcodes

The theme includes a number of useful shortcodes to help you make an effective website.

### Optimized images

You can insert an image using the shortcode `imgh`. This will automatically resize and optimize the image in the final website, making it blazingly fast.

The shortcode includes an optional caption as well as an optional link. If a caption is given, it is included under the image. If a link is given, the image becomes a link.

```
{{< imgh src="/artists/madskjeldgaard-tucson.jpg" alt="Mads Kjeldgaard" link="https://madskjeldgaard.dk" caption="Self portrait of the artist. Mads Kjeldgaard 2024.">}}
```

Note: The shortcode assumes that your images are in the folder `assets/images`. So the above example's full path from the root of the theme is `assets/images/artists/madskjeldgaard-tucson.jpg`.
