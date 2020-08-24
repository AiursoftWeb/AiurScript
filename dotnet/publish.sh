publish()
{
    output="$1"
    csproj="$2"
    ls | grep -q obj || dotnet restore $csproj
    dotnet publish -r linux-x64 -c Release --no-self-contained --no-restore -o $output /p:PublishReadyToRun=true $csproj
}

publish "$@"