#!/bin/bash  
#=====================================================
#
#          FILE: funcRaspberryPi.sh
# 
#         USAGE: ./funcRaspberryPi.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 00:45
#      REVISION:  ---
#=====================================================
set -o nounset                              # Treat unset variables as an error
function RaspberryPi ()
{
	local PI
	REVISION=$(awk '/^Revision/ {sub("^1000", "", $3); print $3}' /proc/cpuinfo)
if [  REVISION='a21041' ]; then
	PI='2 Model B'
elif [ REVISION='0002' ] ; then    
	PI='B or Beta Board'
elif [ REVISION='0003' ] ; then    
	PI='B or Beta Board'
elif [ REVISION='0004' ] ; then    
	PI='B or Beta Board'
elif [ REVISION='0005' ] ; then    
	PI='B or Beta Board'
elif [ REVISION='0006' ] ; then    
	PI='B or Beta Board'
elif [ REVISION='0007' ] ; then    
	PI='A'
elif [ REVISION='0008' ] ; then    
	PI='A'
elif [ REVISION='0009' ] ; then    
	PI='A'
elif [ REVISION='000d' ] ; then    
	PI='B'
elif [ REVISION='000e' ] ; then    
	PI='B'
elif [ REVISION='000f' ] ; then    
	PI='B'
elif [ REVISION='0010' ] ; then    
	PI='B+'
elif [ REVISION='0011' ] ; then    
	PI='Compute Module 1'
elif [ REVISION='0012' ] ; then    
	PI='A+'
elif [ REVISION='0013' ] ; then    
	PI='B+'
elif [ REVISION='0014' ] ; then    
	PI='Compute Module 1'
elif [ REVISION='0015' ] ; then    
	PI='A+'
elif [ REVISION='a01040' ] ; then    
	PI='2 Model B'
elif [ REVISION='a22042' ] ; then    
	PI='2 Model B (with BCM2837)'
elif [ REVISION='900021' ] ; then    
	PI='A+'
elif [ REVISION='900032' ] ; then    
	PI='B+'
elif [ REVISION='900092' ] ; then    
	PI='Zero'
elif [ REVISION='900093' ] ; then    
	PI='Zero'
elif [ REVISION='9000c1' ] ; then    
	PI='Zero W'
elif [ REVISION='a02082' ] ; then    
	PI='3 Model B'
elif [ REVISION='a020a0' ] ; then    
	PI='Compute Module 3 (and CM3 Lite)'
elif [ REVISION='a22082' ] ; then    
	PI='3 Model B'
elif [ REVISION='a32082' ] ; then    
	PI='3 Model B+'
elif [ REVISION='a020d3' ] ; then    
	PI='3 Model B+'
elif [ REVISION='9020e0' ] ; then    
	PI='3 Model A+'
else
	PI='Unknown Board'
fi
echo $PI
}
