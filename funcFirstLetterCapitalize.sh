#!/bin/bash - 
#===============================================================================
#
#          FILE: funcFirstLetterCapitalize.sh
# 
#         USAGE: ./funcFirstLetterCapitalize.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/15/2018 09:22
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

PARAM1="$1"

function FirstLetterCapitalize ()
{
	if [ "$#" ]
	then
		OUPUT="${PARAM1^}"
		echo "$OUTPUT"
	else
		echo "No parameter sent. Exiting"
		exit 1
	fi

}	# end FirstLetterCapitalize

