%post
curl -s "https://raw.githubusercontent.com/mnagel/clustergit/master/clustergit" -o "/usr/local/bin/clustergit"
chmod +x /usr/local/bin/clustergit

curl -s "https://getcomposer.org/composer-1.phar" -o "/usr/local/bin/composer1"
chmod +x /usr/local/bin/composer1

curl -s "https://getcomposer.org/composer-2.phar" -o "/usr/local/bin/composer"
chmod +x /usr/local/bin/composer

curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sh ./aws/install
rm -rf aws
%end
