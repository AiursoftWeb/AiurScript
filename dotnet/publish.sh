publish()
{
    csproj="$1"
    output="$2"
    ls | grep -q obj || dotnet restore $csproj -r linux-x64
    echo "Deleting all dll files under $output ..."
    find $output -name "*.dll" -delete > /dev/null 2>&1
    dotnet publish -c Release --no-self-contained --no-restore -o $output $csproj
}

publish "$@"
