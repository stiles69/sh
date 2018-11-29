#!/bin/bash 
#===============================================================================
#
#          FILE: funcReplaceUnderlineWithSpace.sh
# 
#         USAGE: ./funcReplaceUnderlineWithSpace.sh 
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
OLDVARIABLE="$1"
function ReplaceUnderlineWithSpace ()
{
	NEWVARIABLE = `echo $OLDVARIABLE | tr '_' ' '`
	echo $NEWVARIABLE
}	# end function
