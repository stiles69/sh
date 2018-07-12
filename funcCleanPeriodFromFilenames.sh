#!/bin/bash - 
#===============================================================================
#
#          FILE: funcCleanPeriods.sh
# 
#         USAGE: ./funcCleanPeriods.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/11/2018 21:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function CleanPeriodsFromFilenames ()

{
		DIR="$1"
		for file in "$DIR"; do

    			newname=$(echo $file | tr '.' '_' | sed 's/\(.*\)_\([^_]*\)$/\1.\2/g')
			echo "The new name is: $newname"
    			[ "$newname" != "$file" ] && mv "$file" "$newname"
		done
}	# end function

