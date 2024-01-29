sudo apt-get update -y
sudo apt update && sudo apt upgrade -y
sudo apt install ffmpeg -y
sudo mv ./mediamtx /usr/local/bin/mediamtx
sudo mv ./Other_Configs/mediamtx.service /etc/systemd/system/mediamtx.service
sudo systemctl daemon-reload
sudo systemctl enable mediamtx
sudo systemctl start mediamtx
sudo ufw allow 8554/tcp && sudo ufw allow 8000/udp && sudo ufw allow 8001/udp && sudo ufw allow 1935/tcp && sudo ufw allow 8888:8889/tcp && sudo ufw allow 8889/tcp && sudo ufw allow 8890/udp && sudo ufw allow 8189/udp && sudo ufw allow 1936/tcp

# mkdir /root/mediamtx
# sudo snap install core; sudo snap refresh core
# sudo snap install --classic certbot
# sudo ln -s /snap/bin/certbot /usr/bin/certbot
# sudo ufw allow 80
# sudo ufw allow 443
# todo add input request
#sudo certbot certonly --standalone --config-dir /root/mediamtx -d your.domain
