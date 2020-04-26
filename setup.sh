#!/bin/bash
'''
junopath="/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/"
if [ $# -le 1 ]
then
    path=${junopath}"/Pre-Release/J18v1r1-Pre1/"
else
    path=${junopath}$1
fi
# setup JUNO software
if [ -z $JUNOTOP ]
then
    source ${path}"/setup.sh"
fi
'''
echo "JUNO Software Environment Setup."

# setup mpi env
export PATH="/home/mpiuser/mpich/bin/:"$PATH
echo "MPI Environment Setup."

# setup python env
export PYTHONPATH=/usr/bin/:$PYTHONPATH

# setup DistJET env
export DistJETPATH="/root/mpi"
export DistJET_TMP=${HOME}"/.DistJET"
echo "DistJET Environment Setup."
