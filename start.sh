apt update
apt upgrade -y
sleep 2
apt install zsh -y
sleep 2
chmod +x mariadb-autoinstall-part1.sh
chmod +x mariadb-autoinstall-part2.sh
chmod +x install.sql
sleep 1
./mariadb-autoinstall-part1.sh
