yum install java-21-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/rpm-stable/jenkins.repo
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins


new one 


dnf install -y java-21-amazon-corretto fontconfig ca-certificates
rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key
curl -fL -o /tmp/jenkins.rpm https://mirrors.in2.sahilister.net/jenkins/rpm-stable/jenkins-2.580.2-1.noarch.rpm
curl -fL -o /tmp/jenkins.rpm https://mirrors.in2.sahilister.net/jenkins/rpm-stable/jenkins-2.580.2-1.noarch.rpm
rpm -K /tmp/jenkins.rpm
dnf install -y /tmp/jenkins.rpm
systemctl enable --now jenkins
systemctl status jenkins


claude code

sudo dnf update -y
sudo dnf install -y java-21-amazon-corretto-headless fontconfig wget

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/rpm-stable/jenkins.repo
sudo rpm --import $(grep ^gpgkey /etc/yum.repos.d/jenkins.repo | cut -d= -f2)

sudo dnf clean all
sudo dnf install -y jenkins

# check it really installed before starting
rpm -q jenkins

sudo systemctl enable --now jenkins
sudo systemctl status jenkins
