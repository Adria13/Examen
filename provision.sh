sudo rm -rf /var/www/index.html
ln -s /home/proyectos/ /var/www/

sudo cp /home/config/agency.conf /etc/apache2/sites-available/
sudo cp /home/config/creative.conf /etc/apache2/sites-available/

sudo a2dissite default
sudo a2ensite agency.conf
sudo a2ensite creative.conf

service apache2 reload
