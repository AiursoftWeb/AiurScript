wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb && rm ./packages-microsoft-prod.deb
apt update
DOTNET_CLI_TELEMETRY_OPTOUT=1 DOTNET_PRINT_TELEMETRY_MESSAGE="false" apt install -y apt-transport-https dotnet-sdk-3.1 libgdiplus
dotnet tool install --global dotnet-ef
export PATH="$PATH:$HOME/.dotnet/tools