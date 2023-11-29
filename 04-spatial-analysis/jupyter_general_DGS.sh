#!/bin/bash

# Example of running python script in a batch mode

#SBATCH --job-name=gen-note
#SBATCH --output=/mnt/isilon/cscb/Projects/Merscope/MERSCOPE_NB_3472_R2/04-spatial-analysis/notebook.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=50G

source /home/smithd30/.bashrc
export NUMEXPR_MAX_THREADS=16
cd /mnt/isilon/cscb/Projects/Merscope/MERSCOPE_NB_3472_R2/04-spatial-analysis

#jupyter lab --ip=0.0.0.0 --port=8817
jupyter lab --ip=0.0.0.0
