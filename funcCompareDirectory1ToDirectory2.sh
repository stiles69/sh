#!/bin/bash  
#===============================================================================
#
#          FILE: funcCompareDirectory1ToDirectory2.sh
# 
#         USAGE: ./funcCompareDirectory1ToDirectory2.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/14/2018 09:15
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function CompareDirectory1ToDirectory2 ()
{
	USAGE="The function takes two parameters PARAM1 is the directory to check against directory 2. It will only compare filenames and copy them into the PWD/NoMatch in both."

	if [ "$#" lt 1 ]
	then
		DIRECTORY1="$1"
		DIRECTORY2="$2"
		cd "$DIRECTORY1"
		if [ ! "$PWD/NoMatch" ]
		then
			TEMPDIR="(echo "${mktemp}")"
			echo $TEMPDIR
		fi
		#Walk
	else
		echo "Wrong number of parameters. Usage is $USAGE"
		exit 1
	fi

	function Walk ()
	{
	shopt -s globstar
	for i in ./**/*
	do
		if [ -f "$i" ];
		then        
					
			printf "Path: %s\n" "${i%/*}" # shortest suffix removal
			printf "Path with just one number sign: %s\n" "${i%#/*}" # shortest suffix removal
			#printf "Filename: %s\n" "${i##*/}" # longest prefix removal
			#printf "Extension: %s\n"  "${i##*.}"
			#printf "\n\n"
			#printf "Filesize: %s\n" "$(du -b "$i" | awk '{print $1}')"
	       		FILEEXT="${i##*.}"	
			FILENAME="${i##*/}"
			#NAME="$(echo "$FILENAME" | cut -d'.' -f1)"
			DIRECTORYPATH="${i%/*}"
			#echo "FILEXT is "$FILEEXT
			#echo "FILENAME is $FILENAME"
			#echo "NAME =  $NAME"
			
			CompareDirectories	

			#if [ $FILEEXT = "mp3" ]
			#then
				#NAME="$(echo "$FILENAME" | cut -d'.' -f1)"
				#ffmpeg -n -i "$i" -c:a libfdk_aac -vn "./Converted/$NAME.m4a"
				#wait
			#fi
			#wait

			function CompareDirectories ()
			{
				NAME="$(echo "$FILENAME" | cut -d'.' -f1)"
				echo "NAME is $NAME"
				DIRECTORYPATHCOMPARE="$(echo "$DIRECTORYPATH" | cut -d'/' -f3)"
				echo "DIRECTORYPATHCOMPARE is $DIRECTORYPATHCOMPARE"
				#if [ ! "$NAME" =
			}	# end CompareDirectories
		fi
	done
	}	# end Walk
}	# end function
