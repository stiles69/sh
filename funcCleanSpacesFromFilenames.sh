#/bin/bash
#===============================================================================
#
#          FILE: funcClean.sh
# 
#         USAGE: ./funcClean.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/11/2018 20:09
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# For files in folder named /files
function CleanSpacesFromFilenames ()
{
for i in `IFS="";find /files -name *\ *`
do
	echo $i
done > /tmp/list

while read line
do
	mv "$line" `echo $line | sed 's/ /_/g'`

done < /tmp/list

rm /tmp/list
}	# end function

