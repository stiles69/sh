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
		echo "Testing if-loop. The PACKAGENAME is $PACKAGENAME"
		InstallProceed $PACKAGENAME 	
	fi

}	# end Install

function InstallProceed ()
{
	if [ $(dpkg-query -W -f='${Status}' $PACKAGENAME 2>/dev/null | grep -c "ok installed") -eq 0 ];
	then
		echo "The package to be installed is $PACKAGENAME"
	else
		echo "The package $PACKAGENAME is already installed."
	fi
}	# end InstallProceed	

