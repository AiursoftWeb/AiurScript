publish()
{
    output="$1"
    csproj="$2"

    dotnet publish -r linux-x64 -c Release --no-self-contained -o $output /p:PublishReadyToRun=true $csproj
}

publish "$@"