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

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
HOST=10.0.0.11
USAGE="Usage is funcSendMessage SUMMARY BODY"
ICON="/usr/share/icons/roguedesigns/64x64/Slave-Icon.svg"
#-------------------------------------
function SendMessage ()
{
		
		local SUMMARY="'$1'"
		local BODY="'$2'"

	sshpass -p "Samsung#2013" ssh brettsalemink@10.0.0.11 'dunstify "'$SUMMARY'" "'$BODY'" -I /usr/share/icons/roguedesigns/64x64/Slave-Icon.svg'

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$SUMMARY'" -d "c='$BODY'" -d "u=http://roguedesigns.us"
   

}	


