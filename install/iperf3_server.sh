apt update
DEBIAN_FRONTEND=noninteractive apt install iperf3 -y

echo "IP is:"
curl https://ifconfig.me

rm /etc/systemd/system/iperf3.service
echo '
[Unit]
Description=iperf3 server
After=syslog.target network.target auditd.service

[Service]
ExecStart=/usr/bin/iperf3 -s

[Install]
WantedBy=multi-user.target

' | tee -a /etc/systemd/system/iperf3.service

systemctl enable iperf3.service
systemctl start iperf3.service
systemctl status iperf3.service
