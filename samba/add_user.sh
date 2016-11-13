cp /etc/samba/smb.conf ./
echo "[pct]" >> smb.conf
echo "comment = Home Directories" >> smb.conf
echo "browseable = yes" >> smb.conf
echo "writable = yes" >> smb.conf
echo "path = home/pct" >> smb.conf
echo "valid users = pct" >> smb.conf
sudo cp smb.conf /etc/samba/smb.conf

sudo smbpasswd -a pct

sudo /etc/init.d/smbd restart
