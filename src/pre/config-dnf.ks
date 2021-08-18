%pre
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=1" >> /etc/dnf/dnf.conf
%end