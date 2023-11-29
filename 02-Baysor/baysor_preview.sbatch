#!/bin/bash
#SBATCH --job-name=baysor_preview        # Job name
#SBATCH --nodes=1                    # Run all processes on a single node
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --cpus-per-task=24            # Number of CPU cores per task
#SBATCH --mem=500G                    # Job memory request
#SBATCH --time=12:00:00              # Time limit hrs:min:sec
#SBATCH --output=logs/eo_%x_%j.log    # Standard output and error log

cd /mnt/isilon/cscb/merscope/MERSCOPE_NB_3472_R2/02-Baysor
export PATH=$PATH:/mnt/isilon/cscb/software/Baysor/bin

Baysor preview -x global_x -y global_y -z global_z -g gene \
       --exclude-genes='Blank*' \
       -m 10 \
       -o preview_10/  \
       ../data/detected_transcripts.csv 
