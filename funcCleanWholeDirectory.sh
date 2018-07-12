#!/bin/bash - 
#===============================================================================
#
#          FILE: funcCleanWholeDirectory.sh
# 
#         USAGE: ./funcCleanWholeDirectory.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/11/2018 22:49
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcCleanSpacesFromFilenames.sh
. $HOME/lib/sh/funcCleanPeriodFromFilenames.sh
. $HOME/lib/sh/funcSanitize.sh

function CleanWholeDirectory.sh
{
	if [ "$#" -lt 1 ]
        then
                echo "Function CleanWholeDirectory is missing parameter."
                echo "Now exiting."
                exit 0
        else
                local PARAM1=$1
                
        fi

	Sanitize_dir $PARAM1
	CleanPeriodsFromFilenames
	CleanSpacesFromFilenames

}	# end function

