# sprite75/scout_realtime

Simple container which will handle Dynamic DNS for domains registered with Namecheap. It will check your IP every 10 minutes.

## Configuration

Provide the following environment variable to the container:

- DDNS_DOMAIN: your base domain (e.g. "google.com")
- DDNS_SUBDOMAINS: space-separated subdomains you wish to point to the machine (or LAN sharing a single public IP) running this container
- DDNS_PASSWORD: the token or password given to you by Namecheap
- TZ: (optional) provide a timezone for logging outputs (e.g. Australia/Melbourne)

## Usage

```bash
docker run \
    -d \
    -e DDNS_DOMAIN="google.com" \
    -e DDNS_SUBDOMAINS="maps photos drive" \
    -e DDNS_PASSWORD="1234ssdafadf123" \
    sprite75/namecheap_ddns
```
