register_service()
{
    service_name="$1" # my.service
    local_port="$2" # 12345
    run_path="$3" # .
    dll="$4"
    as_root="$5"

    mkdir /var/www -p
    mkdir /var/www/.local/share -p
    if [ "$as_root" = true ]; then
        user="root"
    else
        user="www-data"
        chown www-data:www-data /var/www -R
        chown www-data:www-data $run_path -R
    fi

    mv /etc/systemd/system/$service_name.service /tmp/$service_name.service.bak 2>/dev/null
    echo "[Unit]
    Description=$dll Service
    After=network.target
    Wants=network.target

    [Service]
    Type=simple
    User=$user
    ExecStart=/usr/bin/dotnet $run_path/$dll --urls=http://0.0.0.0:$local_port/
    WorkingDirectory=$run_path
    Restart=always
    RestartSec=10
    KillSignal=SIGINT
    Environment=\"ASPNETCORE_URLS=http://0.0.0.0:$local_port\"
    Environment=\"ASPNETCORE_ENVIRONMENT=Production\"
    Environment=\"DOTNET_PRINT_TELEMETRY_MESSAGE=false\"
    Environment=\"DOTNET_CLI_TELEMETRY_OPTOUT=1\"
    Environment=\"ASPNETCORE_FORWARDEDHEADERS_ENABLED=true\"
    Environment=\"DOTNET_NOLOGO=1\"

    [Install]
    WantedBy=multi-user.target" > /etc/systemd/system/$service_name.service
    systemctl daemon-reload
    systemctl enable $service_name.service
    systemctl stop $service_name.service
    systemctl start $service_name.service
    systemctl status --no-block --no-pager $service_name.service
}

register_service "$@"