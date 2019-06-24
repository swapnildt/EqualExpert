
#Installing Java
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update -y
sudo apt-get install openjdk-8-jdk -y
sudo update-alternatives --config java
sudo update-alternatives --config javac
java -version
#Installing Jenkins
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add -
sudo echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
sudo apt-get update -y
sudo apt-get install jenkins -y
cd /opt/
sudo wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
sudo tar -xvzf apache-maven-3.3.9-bin.tar.gz
sudo mv apache-maven-3.3.9 maven
#Installing Ansible
apt-get install python-minimal -y
apt-get install python3 -y
apt-get update -y
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update -y
apt-get install ansible -y
ansible --version
#setting java and maven path
jpath="/usr/lib/jvm/java-8-openjdk-amd64"
sudo cat >> /etc/environment <<EOL
JAVA_HOME="$jpath"
export M2_HOME=/opt/maven
export PATH=\${M2_HOME}/bin:\${PATH}
EOL
. /etc/environment
echo $M2_HOME
echo $JAVA_HOME
