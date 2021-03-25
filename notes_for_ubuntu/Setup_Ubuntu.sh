#!/bin/bash

###
# Run sudo systemctl restart gdm
# then you can switch to i3
###

echo "Upgrade your system"
sudo apt update
sudo apt upgrade

echo "Installing basic softwares"
sudo apt install git i3 ranger vim neovim terminator inkscape neofetch rxvt-unicode obs-studio brightnessctl deepin-screenshot gdebi-core libudunits2-dev libgdal-dev r-base fcitx fcitx-googlepinyin perl nodejs npm zathura evince htop nautilus code



echo "Installing python3.8.6"
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev liblzma-dev libsqlite3-dev

cd $HOME && mkdir git && cd git
git clone https://github.com/yhao21/Vim.git


myFile=$HOME/Downloads

# -d stands for directory
# -f stands for file
if test -d $myFile; then
				echo "Enter Downloads"
				## must add $ before variable name.
				## otherwise bash would recognize 'myFile' as
				## the name of the dir or file
				cd $myFile
				wget https://www.python.org/ftp/python/3.8.6/Python-3.8.6.tgz
				tar -xf Python-3.8.6.tgz
				cd Python-3.8.6
				./configure --enable-optimizations
				make -j 8
				sudo make altinstall


fi

sudo pip3.8 install jedi python-language-server inkscape-figures

echo "Install py packages"
sudo pip3.8 install pandas numpy sklearn matplotlib imageio requests selenium bs4 nltk statsmodels openpyxl


echo "Install markdown preview"
sudo npm -g install instant-markdown -d
sudo apt install xdg-utils curl


echo "Config your ranger"
cd $HOME/.config/ && rm -rf ranger
cp -r $HOME/git/Vim/notes_for_ubuntu/some_backup/nvim_laptop/ranger $HOME/.config/



echo "Config your neovim"

myFile=$HOME/.config/
nvimpath=$HOME/git/Vim/notes_for_ubuntu/some_backup/nvim_laptop/nvim/
cd $myFile && cp -r $nvimpath $myFile


echo "set up Chinese input env..."
## use this command to append text to a file
cat << EOF >> $HOME/.profile
export XMODIFIERS=@im=fcitx 
export QT_IM_MODULE=fcitx 
export GTK_IM_MODULE=fcitx 
EOF



echo "set up your bashrc..."
cat << EOF >> $HOME/.bashrc

# ==================================
# Texlive 2020
# ==================================

PATH=/usr/local/texlive/2020/bin/x86_64-linux:$PATH;export PATH
MANPATH=/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH;export MANPATH
INFOPATH=/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH;export INFOPATH



# ==================================
# keymode
# ==================================
alias kk='xmodmap ~/.xmodmap'


# ==================================
# brightness
# ==================================
alias b1='sudo brightnessctl s 10%'
alias b2='sudo brightnessctl s 20%'
alias b3='sudo brightnessctl s 30%'
alias b4='sudo brightnessctl s 40%'
alias b5='sudo brightnessctl s 50%'
alias b6='sudo brightnessctl s 60%'
alias b7='sudo brightnessctl s 70%'
alias b8='sudo brightnessctl s 80%'
alias b9='sudo brightnessctl s 90%'
alias b10='sudo brightnessctl s 100%'




# ==================================
# mouse speed
# ==================================
alias slow='xinput set-prop "USB OPTICAL MOUSE" "Coordinate Transformation Matrix" 0.2 0 0 0 0.2 0 0 0 1'


# ==================================
# disable touchpad
# ==================================
alias cj='xinput --disable "SynPS/2 Synaptics TouchPad"'
alias ck='xinput --enable "SynPS/2 Synaptics TouchPad"'


# ==================================
# neofetch
# ==================================
alias s='neofetch'

EOF


echo "set up your i3wm..."
myFile=$HOME/.config/
i3wmpath=$HOME/git/Vim/notes_for_ubuntu/some_backup/nvim_laptop/i3
cp -r $i3wmpath $myFile


echo "Prepare i3 wallpaper"
cd $HOME/git/
git clone https://github.com/yhao21/bg_pic.git
sudo cp -r bg_pic $HOME/Pictures/


echo "keyboard settings"
xmodmap -pke > ~/.xmodmap


echo "config your zathura"
myFile=$HOME/.config/
zathurapath=$HOME/git/Vim/notes_for_ubuntu/some_backup/nvim_laptop/zathura/
sudo cp -r $zathurapath $myFile



