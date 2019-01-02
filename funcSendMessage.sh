#!/bin/bash 
#====================================================
#
#          FILE: funcSendMessage.sh
# 
#         USAGE: ./funcSendMessage.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/02/2019 01:36
#      REVISION:  ---
#====================================================

set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function SendMessage ()
{
    if [ "$#" -lt 1 ]
	then
		echo "Function is missing parameter."
		echo "Now exiting."
		exit 0
	else
		local PARAM1=$1
	fi

    MSG=PARAM1

    echo $MSG


}	


