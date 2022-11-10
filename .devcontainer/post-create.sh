set -e
yum install wget git sudo
wget https://yum.oracle.com/RPM-GPG-KEY-oracle-ol8 -O /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
gpg --import --import-options show-only /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
echo '[ol8_baseos_latest]
name=Oracle Linux 8 BaseOS Latest ($basearch)
baseurl=https://yum.oracle.com/repo/OracleLinux/OL8/baseos/latest/$basearch/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
gpgcheck=1
enabled=1' > /etc/yum.repos.d/ol8-temp.repo
dnf install oraclelinux-release-el8
mv /etc/yum.repos.d/ol8-temp.repo /etc/yum.repos.d/ol8-temp.repo.disabled
