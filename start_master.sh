#!/bin/bash
hydra_nameserver &
time mpiexec -nameserver localhost python /root/mpi/bin/master.py /root/mpi/Application/AnalysisApp/App_Module.py /root/mpi/DistJET/config.ini debug /root/mpi/Application/AnalysisApp/config.ini
