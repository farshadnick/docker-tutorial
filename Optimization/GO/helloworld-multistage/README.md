
docker build -t hello:1 . 

docker images | grep hello

 docker run -itd  -p 8010:8080 hello:3
