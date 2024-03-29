publish()
{
    csproj="$1"
    output="$2"

    #output might be `/opt/app/service-name`
    serviceName=$(basename $output)
    echo "Stopping $serviceName.service ..."
    systemctl stop $serviceName.service > /dev/null 2>&1

    ls | grep -q obj || dotnet restore $csproj -r linux-x64
    echo "Deleting all dll files under $output ..."
    find $output -name "*.dll" -delete > /dev/null 2>&1
    dotnet publish -c Release --no-self-contained --no-restore -o $output $csproj
    
    csprojPath=$(dirname $csproj)
    if [ -d "$csprojPath/wwwroot" ]; then
        echo "Copying $csprojPath/wwwroot files to $output/wwwroot ..."
        mkdir -p $output/wwwroot > /dev/null 2>&1
        cp $csprojPath/wwwroot/* $output/wwwroot/ -r
    fi

    # If production json not found, but default json found, copy default json to production json.
    if [ ! -f "$output/appsettings.Production.json" ] && [ -f "$output/appsettings.json" ]; then
        echo "No appsettings.Production.json found, copying $output/appsettings.json to $output/appsettings.Production.json ..."
        echo "Copying $output/appsettings.json to $output/appsettings.Production.json ..."
        cp $output/appsettings.json $output/appsettings.Production.json
    fi
}

publish "$@"
