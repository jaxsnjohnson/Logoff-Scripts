bash
PROMPT_COMMAND='echo -ne "\033]0;Logging Off\007"'
sudo apt clean  
sudo apt --fix-broken install -y
sudo apt update -m -y
sudo dpkg --configure -a  
sudo apt install -f -y  
sudo apt full-upgrade -y 
flatpak update -y 
flatpak update --appstream  
flatpak repair --user  
sudo flatpak repair --system  
flatpak update -y 
flatpak uninstall --unused
