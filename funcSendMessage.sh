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
#HOST=10.0.0.11
USAGE="Usage is funcSendMessage HOST APPNAME MSG TITLE"
ICON="/usr/share/icons/roguedesigns/slave-icon-256x256.png"
#-------------------------------------
function SendMessage ()
{
  if [ "$#" -ne 4 ]
	then
		echo "Function is missing parameter. $USAGE. Exiting."				
		exit 0
	else
		local HOST=$1
		local APPNAME="'$2'"
		local TITLE="'$3'"
		local MSG="'$4'"
	fi

	sshpass -p "Samsung#2013" ssh brettsalemink@$HOST dunstify --appname="$APPNAME" --icon="$ICON" "$TITLE" "$MSG"

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
   

}	


