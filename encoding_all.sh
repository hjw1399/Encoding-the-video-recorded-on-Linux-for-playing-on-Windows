for file in *.mp4; do
  if [ -f "for_windows/win_$file" ] 
  then
    echo "$file exists."
  else
    ffmpeg -y -i "$file" -c:v libx264 -c:a aac -strict experimental -tune fastdecode -pix_fmt yuv420p -b:a 192k -ar 48000 for_windows/"win_$file" 
  fi
done


