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
ICON="/usr/share/icons/roguedesigns/slave-icon-256x256.png"
#-------------------------------------
function SendMessage ()
{
  if [ "$#" -ne 2 ]
	then
		echo "Function is missing parameter. $USAGE. Exiting."				
		exit 0
	else
		local TITLE="'$1'"
		local MSG="'$2'"
	fi

	sshpass -p "Samsung#2013" ssh brettsalemink@10.0.0.11 'dunstify --icon=/usr/share/icons/roguedesigns/slave-icon-256x256.png "'$TITLE'" "'$MSG'"'

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
   

}	


