# sprite75/headshotbox

Runs [Headshotbox](https://github.com/bugdone/headshotbox) in Docker

## Usage

You need to persist `/config` inside the container to save configuration across container instances.
Mount a folder containing demos anywhere within the container and then configure the location via the UI at <http://localhost:4000>.

### Command Line

```bash
docker run \
    -d \
    -p 4000:4000 \
    -v /path/to/demos:/demos \
    -v $(pwd)/headshotbox-config:/config \
    sprite75/headshotbox
```

### Docker Compose

```yaml
version: "3.7"

services:
  headshotbox:
    image: sprite75/headshotbox
    ports:
      - "${HEADSHOTBOX_PORT}:4000"
    restart: unless-stopped
    volumes:
      - ./persistence/headshotbox/config:/config
      - ${HEADSHOTBOX_DEMOS_ROOT}:/demos
```
