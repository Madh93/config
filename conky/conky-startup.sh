sleep 20s
killall conky
cd "~/.conky/SystemInfo"
conky -c "~/.conky/SystemInfo/systeminfo" &
cd "~/.conky/conky-spotify"
conky -c "~/.conky/conky-spotify/conky-spotify" &