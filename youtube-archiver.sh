#!/bin/bash
shopt -s extglob
echo -e "----------YouTube Playlist Archiver-------------"
echo -e "************************************************"
read -p "Any file other than archive.txt/videos.csv in the present directory will be deleted. Shall I continue? (y/n)? " -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
youtube-dl --skip-download --write-info-json --download-archive archive.txt $1 \
| tee /dev/tty\
| grep "\[info] Writing video description metadata as JSON to:" \
> videos_temp.txt \
&& sed -i 's/\(.\{54\}\)//;s/..........$//' videos_temp.txt \
&& cat videos_temp.txt \
&& youtube-dl --skip-download --write-info-json --download-archive archive.txt $1 \
| tee /dev/tty\
| grep "\[info] Writing video description metadata as JSON to:" \
| gawk '{ match($0, /-([a-zA-Z0-9_-]+)\.info\.json/, arr); if(arr[1] != "") print "youtube "arr[1] }' \
>> archive.txt && tr ',' '_' \
< videos_temp.txt \
| awk -F, -v OFS=, '{sub(/.{11}$/, OFS "&", $0); print}' \
| awk -F "," '{ print $1","$2","$2}' \
| awk -F "," -v OFS="," '{$3="https://youtube.com/watch?v="$3; print}' \
>> videos.csv \
&& rm -v !("youtube-archiver.sh"|"archive.txt"|"videos.csv")
fi

