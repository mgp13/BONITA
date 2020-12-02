#!/bin/bash
array=( "hsa05225.gpickle" "hsa04670.gpickle" "hsa04630.gpickle" "hsa004650.gpickle" "hsa04662.gpickle" "hsa04662.gpickle" "hsa04659.gpickle")
array2=( "5" "3" "4" "5" "3" "5" "5")

for ((i=0;i<${#array[@]};++i)); do
    printf "%s is in %s\n" "${array[i]}" "${array2[i]}"
    sbatch calcNodeImportancesubmit_MISSING.sh ${array[i]} ${array2[i]};
done
