config_password()
{
    dbPassword="$1"
    if [[ "$dbPassword" == "" ]]; 
    then
        echo "You must specify a dbPassword!";
        return 9;
    fi;
    MSSQL_SA_PASSWORD=$dbPassword MSSQL_PID='express' /opt/mssql/bin/mssql-conf -n setup accept-eula
    systemctl restart mssql-server
}

config_password "$@"