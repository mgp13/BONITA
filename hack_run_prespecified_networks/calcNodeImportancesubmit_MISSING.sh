#!/bin/sh
#SBATCH --partition=preempt
#SBATCH -J GArun
#SBATCH -o GA_out_%A_%a.txt
#SBATCH -t 48:00:00
#SBATCH -n 1
#SBATCH -c 1

module load intelpython/2.7.12
python pathway_analysis_score_nodes.py $1 $2
echo "ran GA"
