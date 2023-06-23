cd /usr/share
sleep 1
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip -O phpmyadmin.zip
unzip phpmyadmin.zip
rm phpmyadmin.zip
mv phpMyAdmin-*-all-languages phpmyadmin
chmod -R 0755 phpmyadmin
cd /etc/apache2/conf-available/
echo "#phpMyAdmin Apache Conf
Alias /phpmyadmin /usr/share/phpmyadmin
<Directory /usr/share/phpmyadmin>
    Options SymLinksIfOwnerMatch
    DirecotryIndex
</Directory>
#Disallow web access to directories that don't need it
</Directory>
<Directory /usr/share/phpmyadmin/libraries>
    Require all denied
</Directory>
<Directory /usr/share/phpmyadmin/setup/lib>
    Require all denied
</Directory>" > phpmyadmin.conf
sleep 5
a2enconf phpmyadmin
systemctl restart apache2
mkdir /usr/share/phpmyadmin/temp
chown -R www-data:www-data /usr/share/phpmyadmin/temp
mysql -u root -p < mysql.sql
echo "




rebooting in 30 seconds"
sleep 10
echo "rebooting in 20 seconds"
sleep 10
echo "rebooting in 10 seconds"
sleep 7
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "rebooting now!"
reboot