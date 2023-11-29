#!/bin/bash

# Example of running python script in a batch mode

#SBATCH --job-name=gen-note
#SBATCH --output=/mnt/isilon/cscb/merscope/MERSCOPE_NB_3472_R2/01-preprocessing/notebook-gpu.txt
#SBATCH --gres=gpu:2
#SBATCH --mem=300G

source /home/smithd30/.bashrc

#module load cuda11.1/toolkit/11.1.0
#module load cuda10.2/toolkit/10.2.89

cd /mnt/isilon/cscb/merscope/MERSCOPE_NB_3472_R2/01-preprocessing

jupyter lab --ip=0.0.0.0 --port=8817

