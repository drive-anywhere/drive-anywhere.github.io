#!/bin/bash

pattern=$1
tmp_filename="tmp.mp4"

for file in $( ls $pattern )
do
    echo $file
    # ffmpeg -i $file -vcodec libx264 -crf 30 $tmp_filename
    # ffmpeg  -ss 00:02:00 -t 00:11:00 -i $file -acodec libmp3lame -vcodec libx264 $tmp_filename
    ffmpeg  -ss 00:00:03 -t 00:00:11 -i $file -vcodec copy $tmp_filename
    rm $file
    mv $tmp_filename $file
done

