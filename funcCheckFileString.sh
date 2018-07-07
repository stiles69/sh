#!/bin/bash  
#===============================================================================
#
#          FILE: funcCheckFileString.sh
# 
#         USAGE: ./funcCheckFileString.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/07/2018 02:46
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

USAGE="Usage CheckFileString [STRINGTOCHECK] [PATH/TO/FILETOCHECK] ex. Must be the full path and the file."

## Variables
STRINGTOCHECK=$1
FILETOCHECK=$2

function CheckFileString ()
{
	##To check for a particular  string in a file

	if grep -q $1 $2
	then
		echo "Hooray!!It's available"
	else
		echo "Oops!!Not available"
	fi
} 	# end function

