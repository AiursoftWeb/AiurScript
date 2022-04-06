create_db()
{
    # Create database.
    dbName="$1"
    if [[ "$dbName" == "" ]]; 
    then
        echo "You must specify a dbName!";
        return 9;
    fi;

    dbPassword="$2"
    if [[ "$dbPassword" == "" ]]; 
    then
        echo "You must specify a dbPassword!";
        return 9;
    fi;

    echo "Creating database $dbName..."
    echo "Create Database $dbName" > /tmp/initDb.sql
    /opt/mssql-tools/bin/sqlcmd -U sa -P $dbPassword -S 127.0.0.1 -i /tmp/initDb.sql
    rm /tmp/initDb.sql
}

create_db "$@"