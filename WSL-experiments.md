# Ubuntu in WSL2

## Keep WSL distro's up to date

'''
wsl -d ubuntu -u root -e apt update
wsl -d ubuntu -u root -e apt upgrade -y
'''

## Upgrade Ubuntu to latest non-LTS

'''bash
distro=ubuntu
cat << EOF > upgrade.sh
apt update
apt upgrade -y
apt remove snapd -y
# change release Prompt=lts to Prompt=normal without interaction
sed -i 's/=lts/=normal/' /etc/update-manager/release-upgrades
do-release-upgrade -q
EOF

wsl -d $distro -u root < upgrade.sh
wsl -t $distro
wsl -d $distro cat /etc/os-release
'''

Speed up updates
'''
sudo pip3 install apt-mirror-updater
sudo apt-mirror-updater --auto-change-mirror --verbose
'''

## Ansible

'''
sudo apt install ansible
'''

## Podman / Kubernetes

'''
sudo apt install podman
'''

## Bronnen

* https://www.hanselman.com/blog/keeping-your-wsl-linux-instances-up-to-date-automatically-within-windows-10
* https://askubuntu.com/questions/1093451/how-to-switch-apt-mirror-from-the-commandline
* https://www.atlantic.net/vps-hosting/how-to-upgrade-ubuntu-20-04-to-ubuntu-21-04/
