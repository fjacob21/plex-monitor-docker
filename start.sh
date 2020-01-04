docker run --name plex-monitor -v /var/run/docker.sock:/var/run/docker.sock  -d --restart unless-stopped  plex-monitor
