#! /bin/bash

if [ $#  -ne 1  ]; then
	echo "Usage: $0 videoFile"
	exit 1
fi

FILE=$1

# check if file exists
if [  !   -f "$FILE" ]; then
    echo "$FILE does not exist."
    exit 2
fi

# ffmpeg -re -stream_loop -1 -r 10 -i $FILE -c copy -f rtsp rtsp://localhost:8554/mystream
ffmpeg -re -stream_loop -1 -r 10 -i $FILE -c copy -f rtsp rtsp://localhost:8554/mystream
