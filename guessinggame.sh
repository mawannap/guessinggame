#!/usr/bin/env bash
# File: guessinggame.sh

function numberoffiles {
   local fls=0
   for f in *; do
      let fls+=1
   done
   echo $fls
}

fls=$(numberoffiles)
echo "fls   $fls"
while( true ); do
   echo "How many files are in this directory? Enter:"
   read response
   echo "You entered: $response"
   if (( $response < fls )); then
      echo "$response is too low"
   elif (( $response > fls )); then
      echo "$response is too high"
   else 
      echo "Congratulations, you are correct!!!"
      break 1
   fi
done
