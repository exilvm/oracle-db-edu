sudo apt update -y
sudo apt upgrade -y 
sudo apt install yum yum-utils -y 
mkdir -p /etc/pki/rpm-gpg
wget https://yum.oracle.com/RPM-GPG-KEY-oracle-ol7 -O /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
gpg --quiet --with-fingerprint /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
echo '[ol7_latest]
name=Oracle Linux $releasever Latest ($basearch)
baseurl=https://yum.oracle.com/repo/OracleLinux/OL7/latest/$basearch/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
gpgcheck=0
enabled=1' | sudo tee /etc/yum/repos.d/ol7-temp