register_service()
{
    service_name="$1"
    local_port="$2"
    run_path="$3"
    dll="$4"
    echo "[Unit]
    Description=$dll Service
    After=network.target
    Wants=network.target

    [Service]
    Type=simple
    ExecStart=/usr/bin/dotnet $run_path/$dll.dll --urls=http://localhost:$local_port/
    WorkingDirectory=$run_path
    Restart=always
    RestartSec=10
    KillSignal=SIGINT

    [Install]
    WantedBy=multi-user.target" > /etc/systemd/system/$service_name.service
    systemctl enable $service_name.service
    systemctl start $service_name.service
}

register_service "$@"