apt update
apt install wget gnupg dirmngr -y
wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
gpg -a --export ED444FF07D8D0BF6 | apt-key add -
apt update
apt dist-upgrade -y
apt install kali-archive-keyring
