sudo apt update
DEBIAN_FRONTEND=noninteractive sudo apt install wget curl jq tar -y

latestUrl=$(curl https://api.github.com/repos/fatedier/frp/releases/latest | jq -r '(.assets[] | select(.browser_download_url | contains("linux_amd64"))).browser_download_url')
echo "Latest download url is $latestUrl"
wget -O ~/frp.tar.gz $latestUrl
mkdir ~/temp
tar -zxvf ~/frp.tar.gz --directory ~/temp

frpcPath=$(find ~/temp/ -name "frpc")
frpsPath=$(find ~/temp/ -name "frps")

sudo sudo cp $frpcPath /usr/bin/
sudo sudo cp $frpsPath /usr/bin/

sudo mkdir /etc/frp
sudo touch /etc/frp/frps.ini

echo '
[common]
bind_port = 7000
token = your_strong_password@123
dashboard_port = 7500
dashboard_user = your_name
dashboard_pwd = your_another_strong_password@123
' | sudo tee -a /etc/frp/frps.ini

echo '
[Unit]
Description=Frp Server Service
After=network.target

[Service]
User=root
Type=simple
Restart=on-failure
RestartSec=5s
ExecStart=/usr/bin/frps -c /etc/frp/frps.ini
LimitNOFILE=1048576

[Install]
WantedBy=multi-user.target
' | sudo tee -a /etc/systemd/system/frps.service

sudo systemctl enable frps.service
sudo systemctl start frps.service

echo "IP is:"
curl https://ifconfig.me

sudo systemctl status frps.service