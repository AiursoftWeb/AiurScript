register_service()
{
    service_name="$1" # my.service
    local_port="$2" # 12345
    run_path="$3" # .
    dll="$4" # FuckingProject.dll
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
    Environment=\"ASPNETCORE_ENVIRONMENT=Production\"
    Environment=\"DOTNET_PRINT_TELEMETRY_MESSAGE=false\"

    [Install]
    WantedBy=multi-user.target" > /etc/systemd/system/$service_name.service
    systemctl enable $service_name.service
    systemctl start $service_name.service
}

register_service "$@"
