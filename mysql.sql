UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user = 'root' AND plugin = 'unix_socket';
FLUSH PRIVILEGES;
CREATE USER 'Admin'@'' IDENTIFIED BY 'autoinstall';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'' WITH GRANT OPTION;
