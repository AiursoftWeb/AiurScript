config_password()
{
    dbPassword="$1"
    if [[ "$dbPassword" == "" ]]; 
    then
        echo "You must specify a new dbPassword!";
        return 9;
    fi;
    systemctl stop mssql-server.service
    MSSQL_SA_PASSWORD=$dbPassword MSSQL_PID='express' /opt/mssql/bin/mssql-conf -n setup accept-eula
    systemctl start mssql-server
}

config_password "$@"