# docker-frontend
A tiny front-end server

### Features

This image is very small (4MB), but super handy: `nginx` is tuned for
performance based on real world use cases. `cloudflare.conf` contains
a list of IP ranges belonging to the CloudFlare network and settings
to show the correct client IP addresses in logs and to backend servers.
Our security settings are set according to Mozilla's server security
guide.
