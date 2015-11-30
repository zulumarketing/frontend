### heropunch/frontend

A tiny front-end server.

### Usage

Simply copy your configuration files and/or content into a new image based on `heropunch/frontend`:

```Dockerfile
FROM quay.io/heropunch/frontend
COPY my-site.conf /etc/nginx/sites-enabled/default
COPY htdocs /var/www
```

### Features

This image is very small (`3MB`), but super handy:

- `nginx` is tuned for optimal performance based on common use-cases.
- Our security settings are set according to [Mozilla's server security guide][server-security].

[server-security]: https://wiki.mozilla.org/Security/Server_Side_TLS


### Contribute

Pull requests welcome!
