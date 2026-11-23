yum install java-21-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/rpm-stable/jenkins.repo
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins


new one 

dnf install java-21-amazon-corretto-devel -y
java -version
dnf install fontconfig wget curl ca-certificates -y
rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key
curl -fL https://pkg.jenkins.io/rpm-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo
to view above repo ---cat /etc/yum.repos.d/jenkins.repo
dnf install jenkins -y
to verify ---rpm -q jenkins
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

script

#!/bin/bash

set -e

echo "======================================"
echo " Starting Jenkins Installation"
echo "======================================"

dnf update -y
dnf install java-21-amazon-corretto-devel -y
dnf install fontconfig wget curl ca-certificates -y
java -version
rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key
curl -fL https://pkg.jenkins.io/rpm-stable/jenkins.repo \
-o /etc/yum.repos.d/jenkins.repo
dnf clean all
dnf makecache
dnf install jenkins -y
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins --no-pager


