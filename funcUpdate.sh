#!/bin/bash - 
#===============================================================================
#
#          FILE: funcUpdate.sh
# 
#         USAGE: ./funcUpdate.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/05/2018 05:02
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
. $HOME/lib/sh/funcOS.sh

function funcUpdate ()
{
	OS=funcOS
	case $OS in
		"Debian"|"Raspbian")
		UpdateDeb
		;;
		"Arch")
		UpdateArch
		;;
		"Gentoo")
		UpdateGentoo
		;;
		*)
		echo 'System not found. Exiting.'
		;;
	esac
	return EXITMESSAGE
}	# end function

function UpdateDeb ()
{
	sudo apt-get update -y
	EXITMESSAGE="Completed Debian Update"
}	# end function

function UpdateArch ()
{
	sudo pacman -Syu
	EXITMESSAGE="Completed Arch Update."
}	# end function

function UpdateGentoo ()
{
	sudo emerge --ask --depclean
	sudo revdep-rebuild
	EXITMESSAGE="Completed Gentoo Update"
}	# end function

funcOS ()
{
local OS

if [ -f /etc/os-release ]; then
    	# freedesktop.org and systemd    
	. /etc/os-release    
	OS=$NAME    
elif type lsb_release >/dev/null 2>&1; then    
	# linuxbase.org    
	OS=$(lsb_release -si)    
elif [ -f /etc/lsb-release ]; then    
	# For some versions of Debian/Ubuntu without lsb_release command    
	. /etc/lsb-release    
	OS=$DISTRIB_ID    
elif [ -f /etc/debian_version ]; then    
	# Older Debian/Ubuntu/etc.    
	OS='Debian'    
elif [ -f /etc/SuSe-release ]; then    
	# Older SuSE/etc.   
        OS='SuSe'	
else    OS='Other'

fi

echo $OS
}
