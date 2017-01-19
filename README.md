# docker-airplay
Airplay Receiver for Raspberry Pi (using Shairport)

If you havent done so already, I recommend boosting the voume of the pi to max.  Without doing so,
I found the volume to be annoyingly low, and could hear background static.

```
$ amixer sset PCM,0 100%
```

```
$ docker build -t airplay .
$ docker run -d --net host --device /dev/snd --name airplay --restart=always airplay
```
