#!/bin/bash
#SBATCH -A research
#SBATCH -c 10
#SBATCH --mem-per-cpu 2G
#SBATCH --gres gpu:1
#SBATCH --time 1-00:00:00
#SBATCH --output sbatch_logs_ct1.log
#SBATCH --mail-user nouduru.venkata@research.iiit.ac.in
#SBATCH --mail-type ALL
#SBATCH --job-name GSOC-CT1

jupyter nbconvert --to notebook --allow-errors --execute Common-Test-1.ipynb --inplace
