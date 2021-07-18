echo "Installing teleport..."
curl https://deb.releases.teleport.dev/teleport-pubkey.asc | sudo apt-key add - 
add-apt-repository 'deb https://deb.releases.teleport.dev/ stable main' 
apt-get update 
apt install teleport
wget https://raw.githubusercontent.com/WeLikeToCodeStuff/shellscripts/main/teleport.service
mv teleport.service /etc/systemd/system/teleport.service
if [ -z "$1" ]
then
  systemctl daemon-reload
  systemctl enable teleport
else
  teleport start    --roles=node    --token=$1    --ca-pin=sha256:3e53d54d97c6d8a12f2f720179a80b4087093f6d5cd00ae3054367643f6a565a    --auth-server=104.206.82.28:3025
fi
