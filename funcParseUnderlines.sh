#!/bin/bash  
#====================================================
#
#          FILE: funcParseUnderlines.sh
# 
#         USAGE: ./funcParseUnderlines.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/29/2018 02:43
#      REVISION:  ---
#====================================================
#== GLOBAL VARS ==

#=================
ARGS=1
E_BADARGS=85

if [ $# -ne "$ARGS" ]
then
	echo "Usage: `basename $0` old-pattern"
	exit $E_BADARGS
fi

OLDVAR=$1

sed -e "s/_/ /g" $OLDVAR >>> NEWVAR

echo $NEWVAR


