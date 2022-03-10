#!/bin/bash

# the following is a video converter from Pixel video to ProRes 4444 color space. 
# my original code was lost, and this is from https://ottverse.com/ffmpeg-convert-to-apple-prores-422-4444-hq/
# below is this code as a shell script. I hope to expand on this code with my next Davinci project. My
# original code also supported Sony. 
#
# This converter was useful for some footage shot for a YouTube video. I hope to find my original code that
# includes converters to othe useful codecs in the Davinci suite of video. 

ffmpeg -i inputVideo.mp4 \
-c:v prores_ks \
-profile:v 4 \
-vendor apl0 \
-bits_per_mb 8000 \
-pix_fmt yuva444p10le \
proRes444_output.mov
