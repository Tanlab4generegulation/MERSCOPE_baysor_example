#!/bin/bash
#SBATCH --job-name=baysor_tiles        # Job name
#SBATCH --nodes=1                    # Run all processes on a single node
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --cpus-per-task=16            # Number of CPU cores per task
#SBATCH --mem=200G                    # Job memory request
#SBATCH --time=24:00:00              # Time limit hrs:min:sec
#SBATCH --output=logs/eo_%x_%j.log    # Standard output and error log
#SBATCH --array=0-21

cd /mnt/isilon/cscb/merscope/MERSCOPE_NB_3472_R2/02-Baysor
export PATH=$PATH:/mnt/isilon/cscb/software/Baysor/bin
mkdir tiled/tile_$SLURM_ARRAY_TASK_ID

Baysor run -x global_xpixel -y global_ypixel -z global_z -g gene \
       --exclude-genes='Blank*' \
       -i 200 \
       -s 40 \
       -c config.toml \
       -p \
       -o tiled/tile_$SLURM_ARRAY_TASK_ID \
       ../data/tiled_transcripts/tile_$SLURM_ARRAY_TASK_ID.csv
