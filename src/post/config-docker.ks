%post
mkdir /etc/docker
cat <<EOF > /etc/docker/daemon.json
{
"bip":"172.16.0.1/16"
}
EOF
%end
