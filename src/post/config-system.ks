%post
echo "%wheel     ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/wheel

cat <<EOF > /etc/profile.d/ps1.sh 
PS1="\[\e[32m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]:[\[\e[35m\]\W\[\e[m\]]: "
EOF

echo "DefaultLimitNOFILE=1024:524288" >> /etc/systemd/user.conf

echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=1" >> /etc/dnf/dnf.conf


%end