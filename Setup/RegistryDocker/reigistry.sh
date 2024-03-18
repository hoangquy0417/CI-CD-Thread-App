apt update -y
 apt install certbot -y
 mkdir -p /tools/harbor && cd /tools/harbor# curl -s https://api.github.com/repos/goharbor/harbor/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep '.tgz$' | wget -i -
 tar xvzf harbor-offline-installer*.tgz
 cd harbor/
 cp harbor.yml.tmpl harbor.yml
 export DOMAIN="registry.domain.cuaban"
 export EMAIL="email@cuaban"
 sudo certbot certonly --standalone -d $DOMAIN --preferred-challenges http --agree-tos -m $EMAIL --keep-until-expiring

vi harbor.yml
 > hostname: domain
 > certificate:
 > private_key: 
./prepare
./install.sh
docker-compose ps