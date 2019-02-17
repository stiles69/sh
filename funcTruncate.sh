#!/bin/bash  
#=========================================================
#
#          FILE: funcTruncate.sh
# 
#         USAGE: ./funcTruncate.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 00:45
#      REVISION:  ---
#=========================================================
set -o nounset                              # Treat unset variables as an error


function funcTruncate ()
{
	local NAME
	
	NAME=`echo "$FILENAME" | cut -d'.' -f1`

	echo $NAME

}
