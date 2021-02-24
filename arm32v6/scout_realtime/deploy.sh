#!/bin/bash
docker build . --file ./scout_realtime/Dockerfile -t sprite75/arm32v6.scout_realtime
docker push sprite75/arm32v6.scout_realtime
