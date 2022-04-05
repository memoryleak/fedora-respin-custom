repo --name="sublime-text" --baseurl="https://download.sublimetext.com/rpm/stable/$basearch"
repo --name="docker" --baseurl="https://download.docker.com/linux/fedora/$releasever/$basearch/stable"
repo --name="mysql-community" --baseurl="http://repo.mysql.com/yum/mysql-8.0-community/fc/$releasever/$basearch/"
repo --name="hashicorp" --baseurl="https://rpm.releases.hashicorp.com/fedora/$releasever/$basearch/stable"
repo --name="microsoft-dotnet" --baseurl="https://packages.microsoft.com/yumrepos/microsoft-fedora$releasever-prod/"
repo --name="microsoft-edge" --baseurl="https://packages.microsoft.com/yumrepos/edge/"
repo --name="microsoft-teams" --baseurl="https://packages.microsoft.com/yumrepos/ms-teams"
repo --name="microsoft-vscode" --baseurl="https://packages.microsoft.com/yumrepos/vscode"

%post
cat <<EOF > /etc/yum.repos.d/docker.repo
[docker-ce-stable]
name=Docker CE Stable - \$basearch
baseurl=https://download.docker.com/linux/fedora/\$releasever/\$basearch/stable
enabled=1
gpgcheck=1
gpgkey=https://download.docker.com/linux/fedora/gpg
EOF

cat <<EOF > /etc/yum.repos.d/sublime-text.repo
[sublime-text]
name=Sublime Text - x86_64 - Stable
baseurl=https://download.sublimetext.com/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://download.sublimetext.com/sublimehq-rpm-pub.gpg
EOF

cat <<EOF > /etc/yum.repos.d/microsoft-teams.repo
[microsoft-teams]
name="Microsoft Teams"
baseurl=https://packages.microsoft.com/yumrepos/ms-teams
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

cat <<EOF > /etc/yum.repos.d/microsoft-vscode.repo
[microsoft-vscode]
name="Microsoft Visual Studio Code"
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

cat <<EOF > /etc/yum.repos.d/microsoft-dotnet.repo
[microsoft-dotnet]
name="Microsoft .NET"
baseurl=https://packages.microsoft.com/yumrepos/microsoft-fedora\$releasever-prod/
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

cat <<EOF > /etc/yum.repos.d/microsoft-edge.repo
[microsoft-edge]
name="Microsoft Edge"
baseurl=https://packages.microsoft.com/yumrepos/edge/
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

%end
