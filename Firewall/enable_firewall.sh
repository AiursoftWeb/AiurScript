enable_firewall()
{
    open_port 22
    echo "y" | ufw enable
    echo "Firewall enabled!"
    ufw status
}