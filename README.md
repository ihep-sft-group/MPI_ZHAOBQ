# MPI

## 1.software dependence
mkdir software
### install BOOST
  cd software  
  wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.gz   
  tar -xzvf boost_1_69_0.tar.gz   
  ./bootstrap.sh --prefix=/yourpath/software/boost --with-libraries=python   
  ./b2 && ./b2 install   
  ldconfig   
  
### install MPICH
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
  export PYTHONPATH=/yourMPIPath/pylib/lib64/python2.7/site-packages:$PYTHONPATH
  
  export DistJETPATH=/yourMPIPath/    
  export JUNOTOP=/yourMPIPath/juno:$JUNOTOP   
  
### python and gcc  
  python 2.7 version   
  gcc 4.4.7   

### install python package
  cd /yourMPIPath/pylib/psutil-5.4.1/  
  python setup.py install  


## 2.start server  
source start_master.sh  

## 3.start client  
source start_worker.sh   
