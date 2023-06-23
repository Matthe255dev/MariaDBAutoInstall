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
systemctl reload apache2
mkdir /usr/share/phpmyadmin/temp
chown -R www-data:www-data /usr/share/phpmyadmin/temp
mysql -u user -p < install.sql
