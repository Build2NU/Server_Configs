# The following commands are run from the Vultr script. They are here simply for reference, so we don't forget anything lol.
# LEAVE THEM AS COMMENTS FOR THE LOVE OF GOD
#
# ---- Begin Vultr Script ---- 
# sudo apt install git -y
# sudo mkdir /usr/local/bin/mediamtx || :
# cd /usr/local/bin/mediamtx
# sudo git clone https://github.com/Build2NU/Server_Configs.git .
# sudo ./mediamtx_install.sh platinum
# ---- End Vultr Script ---- 
#
# Stop mediaMTX in case this is being run as an update
sudo systemctl stop mediamtx
# Update the system
sudo apt-get update -y
sudo apt update && sudo apt upgrade -y
sudo apt install ffmpeg -y
# move into the directory before pulling the repo, in case this script is run as an update.
sudo cd /usr/local/bin/mediamtx
sudo git pull
sudo chmod +x /usr/local/bin/mediamtx/mediamtx
sudo chmod +x /usr/local/bin/mediamtx/mediamtx_install.sh
sudo chmod +x /usr/local/bin/mediamtx/mediamtx_ssl_install.sh
sudo ln -s /usr/local/bin/mediamtx/mediamtx_install.sh /usr/local/bin/mediamtx_install.sh
sudo ln -s /usr/local/bin/mediamtx/mediamtx_ssl_install.sh /usr/local/bin/mediamtx_ssl_install.sh
sudo cp /usr/local/bin/mediamtx/services/mediamtx.service /etc/systemd/system/mediamtx.service
# Copy the relevant config based on the first argument added to the script.
sudo cp /usr/local/bin/mediamtx/$1/mediamtx.yml /usr/local/bin/mediamtx/mediamtx.yml
# Reload and start the server
sudo systemctl daemon-reload
sudo systemctl enable mediamtx
sudo systemctl start mediamtx
sudo ufw allow 8554/tcp && sudo ufw allow 8000/udp && sudo ufw allow 8001/udp && sudo ufw allow 1935/tcp && sudo ufw allow 8888:8889/tcp && sudo ufw allow 8889/tcp && sudo ufw allow 8890/udp && sudo ufw allow 8189/udp && sudo ufw allow 1936/tcp

