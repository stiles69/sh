#!/bin/bash 
#===============================================================================
#
#          FILE: funcConvertAnyVideoToKodi.sh
# 
#         USAGE: ./funcConvertAnyVideoToKodi.sh 
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

function ConvertAnyVideoToKodi ()
{
	local FILEPATH="$1"
    local FILENAME="$2"
    local EXPORTPATH="$3"

    NAME=`echo "$FILENAME" | cut -d'.' -f1`
	echo "$FILENAME"
	
	/usr/bin/ffmpeg -i "$FILENAME" -vcodec libx264 -profile:v high -level 4.1 -preset fast -crf 18 -b-pyramid none 
    -acodec ac3 -ab 1536k -scodec copy "$EXPORTPATH/Converted/$NAME.mp4"
	wait	
    
	echo "$EXPORTPATH/Converted/$NAME.mp4"
}	# end function
