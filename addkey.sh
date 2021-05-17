[ ! -d "~/.ssh" ] && mkdir ~/.ssh
cd ~/.ssh
curl https://sh.neonthe.dev/id_rsa_public.pub -o neon-ssh
echo $(cat neon-ssh) >> ~/.ssh/authorized_keys
echo " "
echo " "
echo " Successfully added Neon's SSH key."
echo " "
echo " "
