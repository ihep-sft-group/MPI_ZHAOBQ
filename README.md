# MPI_ZHAOBQ

## software
mkdir software
## 1.install BOOST
  cd software
  wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.gz 
  tar -xzvf boost_1_69_0.tar.gz 
  ./bootstrap.sh --prefix=/yourpath/software/boost --with-libraries=python 
  ./b2 && ./b2 install 
  ldconfig 
  
## 2.install MPICH
  cd software
  wget http://www.mpich.org/static/downloads/3.2/mpich-3.2.tar.gz 
  tar -xzvf mpich-3.2.tar.gz 
  cd mpich-3.2 
  ./configure --prefix=/yourpath/software/mpich 
  make && make install 
  
  ### Environment variable  setup.sh 
  PATH=$PATH:/yourpath/software/mpich/bin 
  export LD_LIBRARY_PATH=/yourpath/software/boost/lib:$LD_LIBRARY_PATH 
  export LD_LIBRARY_PATH=/yourpath/software/mpich/lib:$LD_LIBRARY_PATH 
  
  
python 2.7   
gcc  
gcc-c++  

#setup env  
source bashrc  

#start server  
source start_master.sh  

#start client  
source start_worker.sh   
