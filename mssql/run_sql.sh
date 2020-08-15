run_sql()
{
    dbPassword="$1"
    sql_file="$2"
    if [[ "$dbPassword" == "" ]]; 
    then
        echo "You must specify a dbPassword!";
        return 9;
    fi;

    /opt/mssql-tools/bin/sqlcmd -U sa -P $dbPassword -S 127.0.0.1 -i $sql_file
}

run_sql "$@"