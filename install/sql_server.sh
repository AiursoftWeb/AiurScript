sql_server()
{
    dbPassword="$1"
    if [[ "$dbPassword" == "" ]]; 
    then
        echo "You must specify a new dbPassword!";
        return 9;
    fi;

    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    curl -s https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
    add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/mssql-server-2019.list)"
    curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list

    apt update
    ACCEPT_EULA=Y apt install -y apt-transport-https mssql-server mssql-tools unixodbc-dev
    sleep 10 #wait for its start.

    # Init database password
    MSSQL_SA_PASSWORD=$dbPassword MSSQL_PID='express' /opt/mssql/bin/mssql-conf -n setup accept-eula
    systemctl restart mssql-server
}

sql_server "$@"