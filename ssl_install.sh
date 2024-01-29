mkdir /usr/local/bin/mediamtx/certbot
sudo snap install core; sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo ufw allow 80
sudo ufw allow 443
read -p "Enter Domain: " domain
sudo certbot certonly --standalone --config-dir /usr/local/bin/mediamtx/certbot -d $domain
sudo sed -i "s/domain.com/${domain}/" mediamtx.yml
sudo systemctl restart mediamtx
