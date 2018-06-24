#!/bin/bash  
#===============================================================================
#
#          FILE: funcGenerateGPGKey.sh
# 
#         USAGE: ./funcGenerateGPGKey.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 15:51
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


funcGenerateGPGKey ()
{ 	
ssh-keygen -t dsa
gpg --gen-key

}
