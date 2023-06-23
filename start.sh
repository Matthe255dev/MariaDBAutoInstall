echo "updating..."
apt update
#apt upgrade -y
sleep 2
echo "installing zsh"
apt install zsh -y
sleep 2
echo "making scripts executable"
chmod +x mariadb-autoinstall-part1.sh
chmod +x mariadb-autoinstall-part2.sh
chmod +x install.sql
sleep 1
echo "start part1"
./mariadb-autoinstall-part1.sh
