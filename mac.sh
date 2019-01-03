#install gnome-tweaks and chrome-gnome-shell
echo "Updating repository index"
echo "Please wait"
echo "......"
sudo apt update
echo "Now installing Gnome Tweaks"
echo "....."
sudo apt install gnome-tweaks chrome-gnome-shell
#create themes and icons directory
echo "Creating icons and themes forlder under Home directory"
mkdir ~/.icons
mkdir ~/.themes
#Download McOS Space-Grey theme and Mac OS Icon Theme
cd /tmp
wget https://github.com/vinceliuice/Mojave-gtk-theme/raw/images/MacOSX-icon-theme.tar.xz
wget https://dl.opendesktop.org/api/files/download/id/1538007151/s/23addba08e7013981da01fdff724e556a717ec73a1287eebf3ac91bea2498f0d18f62991026c908abbb959700b887cd5c228345e6f6ca275c5253fb6e2b83c89/t/1546470178/u//McOS-Space-Grey-3.30.tar.xz
#Download Mac MAJOVE Shell theme
wget https://dl.opendesktop.org/api/files/download/id/1545322951/s/fbba5360ade9d2acee51b8b7f356e6ab12f7234f902384d2fa75666fd48435d4fc459c2a42080a450af042f30ed4d5f4548ecb0c9a7e0dc18cffae399819e243/t/1546471900/u//DARK.for.Dash.to.DOCK.tar.xz
tar -xvf DARK.for.Dash.to.DOCK.tar.xz
tar -xvf McOS-Space-Grey-3.30.tar.xz
tar -xvf MacOSX-icon-theme.tar.xz
cp -R /tmp/DARK.for.Dash.to.DOCK/3.30/Majove_NIGHT ~/.themes
mv /tmp/MacOSX ~/.icons
mv /tmp/McOS-Space-Grey-3.30 ~/.themes
gsettings set org.gnome.desktop.interface gtk-theme "McOS-Space-Grey-3.30"
gsettings set org.gnome.desktop.interface icon-theme 'MacOSX'
