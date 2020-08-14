apt install -y ufw
ufw allow 22/tcp;
echo "y" | ufw enable
echo "Firewall enabled!"
ufw status