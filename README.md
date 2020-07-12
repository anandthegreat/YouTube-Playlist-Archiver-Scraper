# YouTube-Playlist-Archiver-Scraper
Scrape or Archive YouTube Playlists into a CSV File with video's Title, ID &amp; URL

###Dependencies
* [youtube-dl](https://ytdl-org.github.io/youtube-dl/index.html) 

###Usage
```
chmod +x youtube-archiver.sh
youtube-archiver.sh <playlist-url>
```

###Files Generated
videos.csv : A comma-separated file containing the video title,id and url of all the videos in the playlist.
archive.txt : Used to remember already downloaded videos. Only changes, if any, are appended in the videos.csv file. 
