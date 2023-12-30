publish()
{
    csproj="$1"
    output="$2"
    ls | grep -q obj || dotnet restore $csproj -r linux-x64
    echo "Deleting all dll files under $output ..."
    find $output -name "*.dll" -delete > /dev/null 2>&1
    dotnet publish -c Release --no-self-contained --no-restore -o $output $csproj
    
    if [ -d "$csproj/wwwroot" ]; then
        echo "Copying wwwroot files to $output/wwwroot ..."
        mkdir -p $output/wwwroot > /dev/null 2>&1
        cp $csproj/wwwroot/* $output/wwwroot/ > /dev/null 2>&1
    fi
}

publish "$@"
