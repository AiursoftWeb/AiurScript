# Install xcaddy.
apt install -y golang-go
apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-xcaddy-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-xcaddy.list
apt update
apt install xcaddy

# Build caddy with a plugin.
xcaddy build --with github.com/mastercactapus/caddy2-proxyprotocol --output /tmp/caddy

# Replace the original caddy
systemctl stop caddy.service
cp /tmp/caddy /usr/bin/
systemctl restart caddy.service