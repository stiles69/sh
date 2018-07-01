#!/bin/bash - 
#===============================================================================
#
#          FILE: funcReboot.sh
# 
#         USAGE: ./funcReboot.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/07/18 12:47
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


SCRIPTDEFINITION="This will reboot the system."
function Proceed ()
{
	echo $SCRIPTDEFINITION
	echo "Do you want to proceed? [Y/n]"
	read PROCEED
	case $PROCEED in
		"Y"|"y")
		ProceedYes
		;;
		"N"|"n")
		ProceedNo
		;;
		*)
		ProceedYes
	esac
}	# end function

function ProceedYes ()
{
	sudo reboot
}	# end function

function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function Main ()
{
	Proceed
	
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly


