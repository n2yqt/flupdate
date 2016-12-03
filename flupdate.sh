#!/bin/bash

clear

if [ -z ${1+x} ]; then
	echo "Which FL app would you like to update?"
	read app
else
	app=$1
fi

if [ "$app" == "adam" ]; then
	clear	
	echo ""
	echo ""
	echo ""
	echo "ADAM IS A FUCKING QUEER"
	echo ""
	echo "8===D~~ O:"
	echo ""
	echo ""
	echo ""
	exit
else

mkdir ~/Src/fldigiupdate
cd ~/Src/fldigiupdate
wget -r -l1 -nd --no-parent -A '*tar.gz' http://www.w1hkj.com/files/$app/
tar xzf *.tar.gz
mkdir ~/Src/tarballs
mv *.gz ~/Src/tarballs
cd $app*
./configure
make
sudo make install
rm -fr ~/Src/fldigiupdate
clear
echo "Installed $app"
$app --version | grep -m1 ""

fi
