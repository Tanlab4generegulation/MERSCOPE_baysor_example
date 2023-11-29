#!/bin/bash

# Example of running python script in a batch mode

#SBATCH --job-name=gen-note
#SBATCH --output=/mnt/isilon/cscb/merscope/MERSCOPE_NB_3472_R2/01-preprocessing/notebook.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=50G

source /home/smithd30/.bashrc
export NUMEXPR_MAX_THREADS=16
cd /mnt/isilon/cscb/merscope/MERSCOPE_NB_3472_R2/01-preprocessing

jupyter lab --ip=0.0.0.0 --port=8817

