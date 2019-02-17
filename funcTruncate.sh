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
#set -o nounset                              # Treat unset variables as an error


function Truncate ()
{

	echo "$1" | cut -d '.' -f1
	
}
