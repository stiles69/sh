#!/bin/bash  
#===============================================================================
#
#          FILE: funcInstall.sh
# 
#         USAGE: ./funcInstall.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/05/2018 17:22
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcCheckInstall.sh
. $HOME/lib/sh/funcOS.sh

function Install ()
{
	if [ "$#" -lt 1 ]
	then
		echo "Missing PACKAGENAME parameter."
		echo "Exiting"
		exit 0
	fi

	if [ "$#" -gt 1 ]
	then
		echo "Too many parameters. Only one is required the PACKAGENAME."
	fi

	if [ -z "$1" ] 	# Is parameter #1 zero length?
	then
		echo "Missing parameter PACKAGENAME."
	else
		PACKAGENAME=$1
		InstallProceed $PACKAGENAME 	
	fi

}	# end Install

function InstallProceed ()
{
	ISINSTALLED=$(CheckInstall $PACKAGENAME)

#	echo $ISINSTALLED
	if [ ISINSTALLED = 1 ]
	then
		echo "The package is already installed. Now exiting"
		exit 0
	else
		PickOS
	fi
}	# end InstallProceed

function InstallDeb ()
{
	sudo apt-get install $PACKAGENAME
}	# end InstallDeb

function InstallYay ()
{
	ISYAYINSTALLED=$(CheckInstall Yay)
	if [ ISYAYINSTALLED = 1 ]
	then
		echo "Yay is installed. Beginning install of $PACKAGENAME"
	else
		InstallYayProceed
	fi	
}	# end function

function InstallYayProceed ()
{
	echo "You do not have yay installed. Do you want to proceed or try to install $PACKAGENAME with Pacman? [1.Yay,2.Pacman]"
	read YAYPROCEED

	case $YAYPROCEED in
		1)
		sudo pacman -S yay
		InstallArch
		;;
		2)
		sudo pacman -S $PACKAGENAME
		;;
		*)
		echo "Unrecognized response. Exiting."
		exit 0
		;;
	esac
}	# end function

function InstallArch ()
{
	yay -S --answerclean ALL --answeredit None --mflags "--nocheck --noconfirm" $PACKAGENAME
}	# end InstallArch

function InstallGentoo ()
{
	sudo emerge $PACKAGENAME --autounmask-write
	sudo etc-update
	sudo emerge $PACKAGENAME
}	# end InstallGentoo

function PickOS ()
{
	
	OS=$(funcOS)
	case $OS in
		"Manjaro Linux")
		InstallArch
		;;
		"Antergos Linux")
		InstallArch
		;;
		"Raspbian GNU/Linux")
		InstallDeb
		;;
		"Debian"|"OSMC")
		InstallDeb
		;;
		"Arch Linux")
		InstallArch
		;;
		"Gentoo")
		InstallGentoo
		;;
		*)
		echo "Distro not recognized. Please install $PACKAGENAME manually. Now Exiting"
		exit 0
		;;
	esac
}	# end PickOS
