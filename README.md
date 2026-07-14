# rupa

Convert, extract audio from, and compress media files.

## Install

```bash
brew tap haiigas/homebrew-rupa
brew install rupa
```

## Usage

```
rupa convert <ext> <file>     change format
rupa extract <ext> <file>     pull audio from video
rupa compress <file>          shrink file
```

### Convert

| From | To |
|------|----|
| any image | webp, avif, tiff, bmp, jpg, png |
| any video | mp4, mkv, mov, webm, gif |

```bash
rupa convert webp photo.png
rupa convert mp4  clip.mkv
```

### Extract (audio from video)

| Output | Codec |
|--------|-------|
| mp3    | libmp3lame |
| m4a    | AAC 192k |
| wav    | PCM 16-bit |

```bash
rupa extract mp3 talk.mp4
rupa extract m4a video.mkv
```

### Compress

Images (jpg, png, webp, avif, tiff) and videos (mp4, mkv, mov, webm, avi, m4v).

```bash
rupa compress video.mp4     # video.mp4 → video-compressed.mp4 (-68%)
rupa compress photo.jpg     # shrinks via ImageMagick
```

Shows compression ratio and file sizes before/after.

## License

MIT
