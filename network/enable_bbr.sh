enable_bbr_force()
{
    echo "BBR not enabled. Enabling BBR..."
    echo 'net.core.default_qdisc=fq' | tee -a /etc/sysctl.conf
    echo 'net.ipv4.tcp_congestion_control=bbr' | tee -a /etc/sysctl.conf
    sysctl -p
}
sysctl net.ipv4.tcp_available_congestion_control | grep -q bbr ||  enable_bbr_force