# Web socket server
node server-stream.js temp123 8082 8084 base64 &
node server-stream.js temp123 9082 9084 &

# Image streaming for Mac
ffmpeg -f avfoundation -framerate 30 -video_size 640x480 -i "0" -f image2 -vcodec mjpeg -b:v 500k -r 21 -q:v 10 -s 640x480 http://127.0.0.1:8082/temp123/640/480/image-%3d.jpg
# Binary streaming for Mac
ffmpeg -f avfoundation -framerate 30 -video_size 640x480 -i "0" -f mpeg1video -b:v 500K -r 21 -q:v 10 http://127.0.0.1:9082/temp123/640/480

# HTTP server
node server-http.js 8080 &

