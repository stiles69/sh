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
USAGE="Usage is funcSendMessage MSG TITLE"
#ICON="/usr/share/icons/roguedesigns/slave-icon-256x256.png"
#-------------------------------------
function SendMessage ()
{
  if [ "$#" -ne 5 ]
	then
		echo "Function is missing parameter. $USAGE. Exiting."				
		exit 0
	else
		
		local APP="'$1'"
		local SUMMARY="'$2'"
		local BODY="'$3'"
		local ICON="$4"
		local URG="$5"
	fi

	sshpass -p "Samsung#2013" ssh brettsalemink@10.0.0.11 'dunstify -a "'$APP'" -s "'$SUMMARY'" -b "'$BODY'" -i "$ICON" -u "$URG"'

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$SUMMARY'" -d "c='$BODY'" -d "u=http://roguedesigns.us"
   

}	


