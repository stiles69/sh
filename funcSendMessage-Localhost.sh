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
set o 
function SendMessage ()
{
	if [ "$#" -ne 3 ]
	then
		echo "Function is missing parameter. Usage is SendMessage APPNAME TITLE MSG"
		exit 0
	else
		local APPNAME="'$1'"
		local TITLE="'$2'"
		local MSG="'$3'"
		local ICON="/usr/share/icons/roguedesigns/slave-icon-256x256.png"
	fi

	ssh brettsalemink@10.0.0.11 dunstify --appname="$APPNAME" --icon="$ICON" "$TITLE" "$MSG"

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
   

}	


