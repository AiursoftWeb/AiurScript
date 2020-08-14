cat /etc/environment | grep -q "ASPNETCORE_ENVIRONMENT" || echo 'ASPNETCORE_ENVIRONMENT="Production"' | tee -a /etc/environment
cat /etc/environment | grep -q "DOTNET_CLI_TELEMETRY_OPTOUT" || echo 'DOTNET_CLI_TELEMETRY_OPTOUT="1"' | tee -a /etc/environment
cat /etc/environment | grep -q "DOTNET_PRINT_TELEMETRY_MESSAGE" || echo 'DOTNET_PRINT_TELEMETRY_MESSAGE="false"' | tee -a /etc/environment
export DOTNET_PRINT_TELEMETRY_MESSAGE="false"
export ASPNETCORE_ENVIRONMENT="Production"
export DOTNET_CLI_TELEMETRY_OPTOUT=1