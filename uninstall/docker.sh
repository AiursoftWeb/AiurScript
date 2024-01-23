docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)
docker system prune -a -f
docker system prune --volumes -f

DEBIAN_FRONTEND=noninteractive apt-get remove -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
rm -rf /etc/apt/keyrings/docker.gpg
rm -rf /etc/apt/sources.list.d/docker.list
sed -i '/download.docker.com/d' /etc/apt/sources.list
apt-get update
dpkg -l | grep docker
DEBIAN_FRONTEND=noninteractive apt-get purge -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
apt-get clean
systemctl stop docker.service
systemctl stop docker.socket
systemctl disable docker.service
systemctl disable docker.socket
find /etc/systemd/ -name docker* | xargs -L1 rm
find /var/run/ -name docker* | xargs -L1 rm -rf
sudo rm /etc/init.d/docker
systemctl daemon-reload
systemctl list-units --all | grep docker