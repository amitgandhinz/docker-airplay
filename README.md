# docker-airplay
Airplay Receiver for Raspberry Pi (using Shairport)


```
$ docker build -t airplay .
$ docker run -d --net host --device /dev/snd --name airplay --restart=always airplay
```
