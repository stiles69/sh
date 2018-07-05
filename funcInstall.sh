#!/bin/bash - 
#===============================================================================
#
#          FILE: funcInstall.sh
# 
#         USAGE: ./funcInstall.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/05/2018 17:22
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Set Variables
DEFAULT=default

function func2 ()
{
	if [ -z "$1" ] 	# Is parameter #1 zero length?
	then
		echo "-Parameter #1 is zero length.-"
	else
		echo "-Parameter #1 is \"$1\".-"
	fi

	variable=${1-$DEFAULT}		# What does
	echo "variable = $variable"	# parameter substitution 
					# show?
					# ----------------------
					# It distinguishes between
					# no param and a null
					# param.

	if [ "$2" ]
	then
		echo "-Parameter #2 is \"$2\".-"
	fi

	return 0
}	# end funcInstall

echo

echo "Nothing passed."
func2 ""			# Called with no params
echo

echo "Zero length parameter passed."
func2 "$uninitialized_param"	# Called with uninitialized param
echo

echo "One parameter passed."
func2 first			# Called with one param
echo

echo "Two parameters passed."
func2 first second 		# Called with two params
echo

echo "\"\" \"second\" passed."
func2 "" second			# Called with zero-length first
echo				# parameter and ASCII string as a
				# second one.
exit 0




