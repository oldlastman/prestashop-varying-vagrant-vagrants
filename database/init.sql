# We include default installations of Prestashop with this Vagrant setup.
# In order for that to respond properly, default databases should be
# available for use.
CREATE DATABASE IF NOT EXISTS `prestashop_default`;
GRANT ALL PRIVILEGES ON `prestashop_default`.* TO 'prestashop'@'localhost' IDENTIFIED BY 'prestashop';
CREATE DATABASE IF NOT EXISTS `prestashop_development`;
GRANT ALL PRIVILEGES ON `prestashop_development`.* TO 'prestashop'@'localhost' IDENTIFIED BY 'prestashop';


# Create an external user with privileges on all databases in mysql so
# that a connection can be made from the local machine without an SSH tunnel
GRANT ALL PRIVILEGES ON *.* TO 'external'@'%' IDENTIFIED BY 'external';
