#!/bin/bash

# Usage: ./convert_for_web.sh path/to/source.mp4

SOURCE="$1"
BASENAME=$(basename "$SOURCE" .mp4)

if [ -z "$SOURCE" ]; then
  echo "Usage: $0 /path/to/source.mp4"
  exit 1
fi

# Export mobile MP4 (~2Mbps, 720p)
HandBrakeCLI \
  -i "$SOURCE" \
  -o "${BASENAME}-mobile.mp4" \
  -e x264 \
  -q 22 \
  -B 128 \
  --preset="Fast 720p30"

# Export desktop MP4 (~5Mbps, 1080p)
HandBrakeCLI \
  -i "$SOURCE" \
  -o "${BASENAME}-desktop.mp4" \
  -e x264 \
  -q 20 \
  -B 160 \
  --preset="Fast 1080p30"

# Export WebM (~2–3Mbps, VP9)
ffmpeg \
  -i "$SOURCE" \
  -c:v libvpx-vp9 \
  -b:v 2M \
  -c:a libopus \
  "${BASENAME}.webm"

# Output the final HTML
cat <<EOF

✅ Done! Here’s your HTML:

<video
  autoplay
  muted
  loop
  playsinline
  poster="${BASENAME}-poster.png"
  class="absolute top-0 left-0 w-full h-full object-cover"
>
  <source src="${BASENAME}.webm" type="video/webm" />
  <source src="${BASENAME}-desktop.mp4" media="(min-width: 768px)" type="video/mp4" />
  <source src="${BASENAME}-mobile.mp4" media="(max-width: 767px)" type="video/mp4" />
  Your browser does not support the video tag.
</video>

EOF
