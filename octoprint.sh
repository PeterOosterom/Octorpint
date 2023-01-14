apt update
apt install python3 python3-pip python3-dev python3-setuptools python3-venv git libyaml-dev build-essential libffi-dev libssl-dev
mkdir OctoPrint && cd OctoPrint
python3 -m venv venv
source venv/bin/activate
pip install pip --upgrade
pip install octoprint
usermod -a -G tty pi
usermod -a -G dialout pi
wget https://github.com/OctoPrint/OctoPrint/raw/master/scripts/octoprint.service && mv octoprint.service /etc/systemd/system/octoprint.service
systemctl start octoprint
