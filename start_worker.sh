#!/bin/bash
mpiexec -n 1 -nameserver localhost -f /root/mpi/DistJET/hostfile python /root/mpi/bin/worker.py 1 /root/mpi/client/DistJET/config.ini debug
#-f /junofs/users/zhaobq/DistJET_Test/hosts.txt
