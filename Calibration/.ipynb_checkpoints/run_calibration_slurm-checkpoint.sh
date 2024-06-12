#!/bin/bash
#SBATCH --job-name=runing_prep     
#SBATCH --mail-user=augustin.cledat@hereon.de
#SBATCH --mail-type=BEGIN,END,FAILED
#SBATCH --partition=shared
#SBATCH --mem=100G 
#SBATCH --account=ch0636
#SBATCH --ntasks-per-node=128
#SBATCH --cpus-per-task=2
#SBATCH --time=2-00
#SBATCH --output=result-%j.txt          # output file
#SBATCH --error=error-%j.txt          # error file

# Begin of section with executable commands
set -e
ls -l

# Initializing ---------------------------------------------------------------------------
echo "---------------------------"
echo "Running preprocess-regional"
echo "---------------------------"
source ~/go_work.sh
# Path to directories --------------------------------------------------------------------
dir_in="/work/ch0636/g300128/Calibration"

# Executing Cwatm, change accordingly
#bash "$dir_in/run_single_calibration.sh" 
bash "$dir_in/run_single_calibration.sh" 