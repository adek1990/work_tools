sudo echo "[pct]" >> /etc/samba/smb.conf
sudo echo "comment = Home Directories" >> /etc/samba/smb.conf
sudo echo "browseable = yes" >> /etc/samba/smb.conf
sudo echo "writable = yes" >> /etc/samba/smb.conf
sudo echo "path = home/pct" >> /etc/samba/smb.conf
sudo echo "valid users = pct" >> /etc/samba/smb.conf

sudo smbpasswd -a pct

sudo /etc/init.d/smbd restart
