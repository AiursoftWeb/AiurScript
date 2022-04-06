cat /etc/environment | grep -q "ASPNETCORE_ENVIRONMENT" || echo 'ASPNETCORE_ENVIRONMENT="Production"' | tee -a /etc/environment
cat /etc/environment | grep -q "DOTNET_CLI_TELEMETRY_OPTOUT" || echo 'DOTNET_CLI_TELEMETRY_OPTOUT="1"' | tee -a /etc/environment
cat /etc/environment | grep -q "DOTNET_PRINT_TELEMETRY_MESSAGE" || echo 'DOTNET_PRINT_TELEMETRY_MESSAGE="false"' | tee -a /etc/environment
cat /etc/environment | grep -q "ASPNETCORE_FORWARDEDHEADERS_ENABLED" || echo 'ASPNETCORE_FORWARDEDHEADERS_ENABLED="true"' | tee -a /etc/environment
export DOTNET_PRINT_TELEMETRY_MESSAGE="false"
export ASPNETCORE_ENVIRONMENT="Production"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export ASPNETCORE_FORWARDEDHEADERS_ENABLED="true"

apt install -y apt-transport-https
wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb && rm ./packages-microsoft-prod.deb
apt-get update
DOTNET_CLI_TELEMETRY_OPTOUT=1 DOTNET_PRINT_TELEMETRY_MESSAGE="false" apt install -y apt-transport-https dotnet-sdk-6.0 libgdiplus
dotnet tool update --global dotnet-ef || dotnet tool install --global dotnet-ef
