aiur() { arg="$( cut -d ' ' -f 2- <<< "$@" )" && curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/$1.sh | sudo bash -s $arg; }

seedDb()
{
    path="$1"
    db_name="$2"
    dbPassword="$3"
    connectionString="Server=tcp:127.0.0.1,1433;Database=$db_name;uid=sa;Password=$dbPassword;MultipleActiveResultSets=True;"
    cp -n $path/appsettings.json $path/appsettings.Production.json
    aiur text/edit_json "ConnectionStrings.DatabaseConnection" "$connectionString" $path/appsettings.Production.json
    aiur text/edit_json "ConnectionStrings.DatabaseConnection" "$connectionString" $path/appsettings.json
    dotnet add $path package Microsoft.EntityFrameworkCore.Design
    ~/.dotnet/tools/dotnet-ef database update --project $path
}

seedDb "$@"