# sprite75/arm32v6.scout_realtime
Runs (scout_realtime)[https://scoutapp.github.io/scout_realtime/] in Docker on older ARM cpus like that of the Raspberry Pi Zero

## Usage
```shell
docker run \
  -d
  --pid=host
  -p 5555:5555
  sprite75/arm32v6.scout_realtime
```
