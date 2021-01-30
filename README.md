# YouTube-Playlist-Archiver-Scraper
Scrape or Archive YouTube Playlists into a CSV File with video's Title, ID &amp; URL. If the playlist is updated, you can run the script again and the changes will be **appended** to the csv file. 

### Dependencies
* [Latest version of youtube-dl](https://ytdl-org.github.io/youtube-dl/index.html) 

### Usage
```
$ chmod +x youtube-archiver.sh
$ ./youtube-archiver.sh <playlist-url>
```
eg: 
```
$ ./youtube-archiver.sh https://www.youtube.com/playlist?list=PLTtjs-HViBW6x21nEaDN737ZSH4-5e7z-
```

### Files Generated
**videos.csv** : A comma-separated file containing the video title,id and url of all the videos in the playlist. </br>
**archive.txt** : Used to remember already downloaded videos. Only changes, if any, are appended in the videos.csv file. 

### Screenshot
![alt text](https://github.com/anandthegreat/YouTube-Playlist-Archiver-Scraper/blob/master/screenshot.png)

### :warning: WARNING 
The script will delete all files other than videos.csv and archive.txt (if exists). So, make sure you run the script in a new directory when using the first time. 
