#!/bin/bash -x
#MSUB -l nodes=1:ppn=24:gpus=2:performance
#MSUB -l walltime=01:00:00
#MSUB -e ./launcher.err
# if keyword omitted : default is submitting directory
#MSUB -o ./launcher.out
# if keyword omitted : default is submitting directory
#MSUB -v tpt=1
### start of jobscript
# for OpenMP jobs only
cd $PBS_O_WORKDIR
echo "workdir: $PBS_O_WORKDIR"
./experiment-10.sh
