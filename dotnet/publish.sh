publish()
{
    output="$1"
    csproj="$2"
    ls | grep -q obj || dotnet restore $csproj -r linux-x64
    echo "Deleting all dll files under $output ..."
    find $output -name "*.dll"
    find $output -name "*.dll" -delete
    dotnet publish -c Release --no-self-contained --no-restore -o $output $csproj
}

publish "$@"
