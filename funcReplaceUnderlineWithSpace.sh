#!/bin/bash 
#===============================================================================
#
#          FILE: funcDate.sh
# 
#         USAGE: ./funcDate.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/04/2018 02:34
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function ReplaceUnderlineWithSpace ()
{
	THEVARIABLE = "$1" | sed -e 's/_/ /g')
	echo "$THEVARIABLE"
}	# end function
