wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb && rm ./packages-microsoft-prod.deb
apt-get update
DOTNET_CLI_TELEMETRY_OPTOUT=1 DOTNET_PRINT_TELEMETRY_MESSAGE="false" apt install -y apt-transport-https dotnet-sdk-6.0 libgdiplus
dotnet tool update --global dotnet-ef || dotnet tool install --global dotnet-ef
