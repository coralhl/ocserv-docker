#!/bin/bash
tag="1.3.0"

# Сборка
docker buildx build --progress=plain -f Dockerfile \
    -t coralhl/ocserv:latest -t coralhl/ocserv:$tag .
# Заливка в регистр
docker push coralhl/ocserv:latest
docker push coralhl/ocserv:$tag
