cat /etc/environment | grep -q "ASPNETCORE_ENVIRONMENT" || echo 'ASPNETCORE_ENVIRONMENT="Production"' | tee -a /etc/environment
cat /etc/environment | grep -q "DOTNET_CLI_TELEMETRY_OPTOUT" || echo 'DOTNET_CLI_TELEMETRY_OPTOUT="1"' | tee -a /etc/environment
cat /etc/environment | grep -q "DOTNET_PRINT_TELEMETRY_MESSAGE" || echo 'DOTNET_PRINT_TELEMETRY_MESSAGE="false"' | tee -a /etc/environment
cat /etc/environment | grep -q "ASPNETCORE_FORWARDEDHEADERS_ENABLED" || echo 'ASPNETCORE_FORWARDEDHEADERS_ENABLED="true"' | tee -a /etc/environment
export DOTNET_PRINT_TELEMETRY_MESSAGE="false"
export ASPNETCORE_ENVIRONMENT="Production"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export ASPNETCORE_FORWARDEDHEADERS_ENABLED="true"

apt install -y apt-transport-https
DOTNET_CLI_TELEMETRY_OPTOUT=1 DOTNET_PRINT_TELEMETRY_MESSAGE="false" apt install -y dotnet7
dotnet tool update --global dotnet-ef || dotnet tool install --global dotnet-ef
