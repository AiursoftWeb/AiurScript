

# Install xcaddy.
apt install -y golang-go
apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-xcaddy-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-xcaddy.list
apt update
apt install xcaddy

# Build caddy with a plugin.
xcaddy build --with github.com/mastercactapus/caddy2-proxyprotocol --output /tmp/caddy
cp /tmp/caddy /usr/bin/

# Test caddy
caddy version

# Add caddy group
groupadd --system caddy
useradd --system \
    --gid caddy \
    --create-home \
    --home-dir /var/lib/caddy \
    --shell /usr/sbin/nologin \
    --comment "Caddy web server" \
    caddy

# Create caddy service
mkdir -p /etc/caddy
chown -R root:caddy /etc/caddy
wget https://raw.githubusercontent.com/caddyserver/dist/master/init/caddy.service -O /etc/systemd/system/caddy.service
systemctl daemon-reload

# Create caddy config
touch /etc/caddy/Caddyfile
echo '{
        auto_https disable_redirects
        servers {
        }
}
' > /etc/caddy/Caddyfile

# Start caddy
systemctl enable caddy.service
systemctl start caddy.service