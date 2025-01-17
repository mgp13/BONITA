#!/bin/sh
#SBATCH --partition=standard
#SBATCH -a 1-5
#SBATCH -J step2_runGA
#SBATCH -o step2_runGA_out_%a.txt
#SBATCH -t 24:00:00
#SBATCH -n 1
#SBATCH -c 1

module load intelpython/2.7.12
#python pathway_analysis_score_nodes.py $1 $SLURM_ARRAY_TASK_ID
python additions_to_pathway_analysis_score_nodes.py $1 $SLURM_ARRAY_TASK_ID
echo "ran GA"