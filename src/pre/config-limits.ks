%pre
echo "DefaultLimitNOFILE=1024:524288" >> /etc/systemd/user.conf
%end