echo "install webserver + php"
apt install apache2 php7.4 php7.4-cli php7.4-common php7.4-curl php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-readline php7.4-xml php7.4-xsl php7.4-zip php7-4-bz2 libapache2-mod-php7.4 -y
echo "install MariaDB"
apt install mariadb-server mariadb-client -y
echo "start secure installation"
mariadb_secure_install