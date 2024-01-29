sudo apt-get update -y
sudo apt update && sudo apt upgrade -y
sudo apt install ffmpeg -y
sudo cp ./service/mediamtx.service /etc/systemd/system/mediamtx.service
sudo systemctl daemon-reload
sudo systemctl enable mediamtx
sudo systemctl start mediamtx
sudo ufw allow 8554/tcp && sudo ufw allow 8000/udp && sudo ufw allow 8001/udp && sudo ufw allow 1935/tcp && sudo ufw allow 8888:8889/tcp && sudo ufw allow 8889/tcp && sudo ufw allow 8890/udp && sudo ufw allow 8189/udp && sudo ufw allow 1936/tcp

