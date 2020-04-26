# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
export PATH=$PATH:/root/mpi/software/mpich/bin
export PATH=$PATH:/root/mpi/server/bin
export DistJETPATH=/root/mpi/
export JUNOTOP=/root/mpi/juno:$JUNOTOP
export LD_LIBRARY_PATH=/root/mpi/software/boost/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/root/mpi/software/mpich/lib:$LD_LIBRARY_PATH

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
