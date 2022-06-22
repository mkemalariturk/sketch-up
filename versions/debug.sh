#!/usr/bin/bash
# Purpose:      Print numbers in random sequence
#               for a given interval.
# Author:       Mustafa Kemal Ariturk
# Date:         20.06.2022
# Version:      debug
# ----------------------------------------------

set -uo pipefail
RED='\033[0;31m'
Green='\033[0;92m'
Yellow='\033[41m'
NC='\033[0m' # No Color

## Declaring an indexed array between 1-10
declare -a arr=(1 2 3 4 5 6 7 8 9 10)
itr=0
## Create a 'for loop' to run 10 times, gets value starting from 10 and ending with 1
for((i=10;i>0;i--))
do
  let itr++
  printf "${Yellow}-----------------+Iteration $itr+-----------------${NC} \n"
  echo "Value of i variable        = $i"
  echo "Value of an array          = ${arr[@]}"
  echo "Index num of above array   = ${!arr[@]}"
  ## For each value of "i", this command creates "i" log "RANDOM value + 1". 
  ## ie. if i=10 and RANDOM=1038, then "RANDOM%i" will be "8" and "r" will be "9".
  ((r=RANDOM%i+1))

  echo "Value of r variable        = $r"

  ## Below command returns array's r-1 th indexed value.
  ## At the beginning array has 10 value but indexes between 0-9. 
  ## Since "r" is "RANDOM%i+1", r-1 is always between 0-9
  printf "${Green}Main Result                = ${arr[@]:r-1:1}${NC} \n"

  if [ ${#arr[@]} -gt $(($i-1)) ]
  then
    ## Below command drops the returned value from the array to not 
    ## return the same value on next steps of 'for loop'.
    unset 'arr[r-1]'

    echo "Dropped array              = ${arr[@]}"
    echo "Index num of dropped array = ${!arr[@]}"
    
    ## 'cnt' stands for the first index number of new array without dropped element.
    ## The command above drops the indexed value but not refreshes index numbers.
    cnt=0

    ## This 'for loop' declares new array with ordered index number withour dropped element.
    for element in ${arr[@]}
    do
      arr[cnt]=$element
      let cnt++
    done
  fi
  ## When the result of above 'for loop' generates an array with unnecessary elements at the end, 
  ## 'if statement' below will drop the last element.
  if [ ${#arr[@]} -gt $(($i-1)) ] 
  then
    unset 'arr[${#arr[@]}-1]'
  fi
  echo "New array Value            = ${arr[@]}"
  echo "Index num of new array     = ${!arr[@]}"
  printf "\n"
done
