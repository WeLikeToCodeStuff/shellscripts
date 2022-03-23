[ ! -d "~/.ssh" ] && mkdir ~/.ssh
cd ~/.ssh
curl https://raw.githubusercontent.com/WeLikeToCodeStuff/shellscripts/main/id_rsa_public -o neon-ssh
echo $(cat neon-ssh) >> ~/.ssh/authorized_keys
echo " "
echo " "
echo " Successfully added Neon's SSH key."
echo " "
echo " "
