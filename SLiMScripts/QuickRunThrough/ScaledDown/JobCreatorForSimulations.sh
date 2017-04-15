#!/bin/bash

#Runs all slim files into their own seperate job.

#Run with qsub -cwd -V -N JobName -l h_data=1024M,highp,h_rt=01:00:00 -M eplau -m bea -t 1-5:1 JobCreatorForSimulations.sh
#Delete all tasks with qdel -u jessegar

slim="/u/project/klohmuel/jessegar/SLiM/bin/slim"
prefixFile="BGSRecombHigh"
suffixFile=".txt"



echo $SGE_TASK_ID
$slim "${prefixFile}_${SGE_TASK_ID}${suffixFile}"


