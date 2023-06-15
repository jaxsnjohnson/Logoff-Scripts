bash
mytitle="Logging Off"
echo -e '\033k'$mytitle'\033\\'
brew upate
sudo launchctl bootout user/$(id -u username)
