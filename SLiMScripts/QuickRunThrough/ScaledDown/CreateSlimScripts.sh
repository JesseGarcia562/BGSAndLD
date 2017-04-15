#!/bin/bash


#Here enter where your background skeletonScript is. NEEDS setSeed(1)
skeletonScript="/u/project/klohmuel/jessegar/BGSAndLD/BGSAndLD/SLiMScripts/QuickRunThrough/ScaledDown/BGSMarch14.slim"

#Here enter how many simulations you want to replicate
numberOfSimulations=10

#Here enter the prefixes for the name of the file you want
name="BGSRecombHigh"



cat $skeletonScript > skeleton.txt



for (( c=1; c<=$numberOfSimulations; c++ ))
do
  echo "Welcome $c"
  sed s/"setSeed(1)"/"setSeed($c)"/ $skeletonScript > ${name}_${c}.slim
done

