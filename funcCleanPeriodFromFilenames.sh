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
	if [ $SHELL = /bin/zsh ]
	then
		CleanWithZsh
	else
		Clean
	fi

	function CleanWithZsh ()
	{
		autoload -U zmv
		zmv '(*).(*)' '${1//./_}.$2'
	}	# end function

	function Clean ()
	{
		for file in *; do
    			newname=$(echo $file | tr '.' '_' | sed 's/\(.*\)_\([^_]*\)$/\1.\2/g')
    			[ "$newname" != "$file" ] && mv "$file" "$newname"
		done
	}	# end function
}	# end function

