#!/usr/bin/bash
# Purpose:      Print numbers in random sequence
#               for a given interval.
# Author:       Mustafa Kemal Ariturk
# Date:         20.06.2022
# Version:      stable
# FileName:     stable.sh
# ----------------------------------------------
set -uo pipefail
## Declaring an indexed array between 1-10
declare -a arr=(1 2 3 4 5 6 7 8 9 10)
printf "Result: "
## Create a for loop to run 10 times, gets value starting from 10 and ending with 1
for((i=10;i>0;i--))
do
  ## For each value of "i", this command creates "i" log "RANDOM value + 1". 
  ## ie. if i=10 and RANDOM=1038, then "RANDOM%i" will be "8" and "r" will be "9".
  ((r=RANDOM%i+1))

  ##This command returns array's r-1 th indexed value. At the beginning array has 10 value but indexes between 0-9. 
  ## If "r" will be 10, result will be 9th indexed value of array. since "r" is "RANDOM%i+", this command will never be minus zero. 
  printf " ${arr[@]:r-1:1} "

  if [ ${#arr[@]} -gt $(($i-1)) ]
  then

    ## This command drops the returned value from the array to not return the same value on next steps of for loop.
    unset 'arr[r-1]'

    ## cnt stands for the first index number of new array without dropped element. 
    ##The command above drops the indexed value but not refreshes index numbers.
    cnt=0 

    ## This for loop declares new array with ordered index number withour dropped element.
    for element in "${arr[@]}"
    do
      arr[cnt]="$element"
      ((cnt++))
    done
  fi
  ## When the result of above 'for loop' generates an array with unnecessary elements at the end, 
  ## this 'if statement' will drop the last element.
  if [ ${#arr[@]} -gt $(($i-1)) ]
  then
    unset 'arr[${#arr[@]}-1]'
  fi
done
printf "\n"
exit 1
