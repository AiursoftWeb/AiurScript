export DEBIAN_FRONTEND=noninteractive
DEBIAN_FRONTEND=noninteractive apt autoremove cargo --purge -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs --output - > install_rust.sh
chmod +x ./install_rust.sh
./install_rust.sh -y
rm ./install_rust.sh
ln -s $(pwd)/.cargo/bin/cargo /usr/bin/cargo
