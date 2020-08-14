wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb && rm ./packages-microsoft-prod.deb
apt install apt-transport-https dotnet-sdk-3.1 libgdiplus