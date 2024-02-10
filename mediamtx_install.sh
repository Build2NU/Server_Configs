sudo apt-get update -y
sudo apt update && sudo apt upgrade -y
sudo apt install ffmpeg -y
sudo git pull
sudo chmod +x /usr/local/bin/mediamtx/mediamtx
sudo chmod +x /usr/local/bin/mediamtx/mediam_install.sh
sudo chmod +x /usr/local/bin/mediamtx/mediamtx_ssl_install.sh
sudo ln -s /usr/local/bin/mediamtx/mediamtx_install.sh /usr/local/bin/mediamtx_install.sh
sudo ln -s /usr/local/bin/mediamtx/mediamtx_ssl_install.sh /usr/local/bin/mediamtx_ssl_install.sh
sudo cp /usr/local/bin/mediamtx/services/mediamtx.service /etc/systemd/system/mediamtx.service
sudo cp /usr/local/bin/mediamtx/$1/mediamtx.yml /usr/local/bin/mediamtx/mediamtx.yml
sudo systemctl daemon-reload
sudo systemctl enable mediamtx
sudo systemctl start mediamtx
sudo ufw allow 8554/tcp && sudo ufw allow 8000/udp && sudo ufw allow 8001/udp && sudo ufw allow 1935/tcp && sudo ufw allow 8888:8889/tcp && sudo ufw allow 8889/tcp && sudo ufw allow 8890/udp && sudo ufw allow 8189/udp && sudo ufw allow 1936/tcp

