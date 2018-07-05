#!/bin/bash - 
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

# Set Variables
DEFAULT=default

function funcInstall ()
{
	if [ $# -gt 1  ] 	# Is parameter #1 zero length?
	then
		echo "Incorrect number of parameters passed. Only requires 1 parameter, the PACKAGE to install."
	else
		PACKAGENAME=$1
		InstallProceed $PACKAGENAME 	
	fi

}	# end funcInstall

function InstallProceed ()
{
	if [ $(dpkg-query -W -f='${Status}' $PACKAGENAME 2>/dev/null | grep -c "ok installed") -eq 0 ];
	then
		echo "The package to be installed is $PACKAGENAME"
	else
		echo "The package $PACKAGENAME is already installed."
	fi
}	# end InstallProceed	

exit 0
