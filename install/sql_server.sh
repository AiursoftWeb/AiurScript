curl -s https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/mssql-server-2019.list)"
curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
apt update
ACCEPT_EULA=Y apt install -y apt-transport-https mssql-server mssql-tools unixodbc-dev
sleep 5 #wait for its start.