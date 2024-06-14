#!/bin/bash

# Initializing ---------------------------------------------------------------------------
echo "---------------------------"
echo "Running preprocess-regional"
echo "---------------------------"
source ~/go_work.sh
# Path to directories --------------------------------------------------------------------
# Initializing ---------------------------------------------------------------------------
echo "------------------------"
echo "Running CWATM and CCWATM"
echo "------------------------"

# Path to directories --------------------------------------------------------------------
cwatm_dir="/work/ch0636/projects/uwares/CWatM"
ccwatm_dir="/work/ch0636/projects/uwares/CCWatM"
sett_dir="/work/ch0636/g300128/Hydrologie_Calibration"
inidir="/work/ch0636/projects/uwares/CWatM/Toolkit/Calibration/runs_calibration/00_009"

# Execute models -------------------------------------------------------------------------

read -p "Do you want to run the cwatm? (yes/no): " choice

if [[ $choice == "yes" ]]; then

    # Executing Cwatm with global data
    echo "Running CWATM"
    #python "$cwatm_dir/run_cwatm.py" "$inidir/settings_CWatM_template_30min.ini" -l
    python "$cwatm_dir/run_cwatm.py" "$sett_dir/settings_files/settings_CWatM_template_5min.ini" -l
    cwatm_pid=$!
    
elif [[ $choice == "no" ]]; then
    echo "Task execution canceled"
    
fi
