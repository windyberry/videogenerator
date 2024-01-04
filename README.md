# videogenerator
Script for generating a video from random images via ffmpeg

ffmpeg -framerate 0.5 -pattern_type glob -i 'images/*.jpg' -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black" -c:v libx264 -pix_fmt yuv420p output.mp4
