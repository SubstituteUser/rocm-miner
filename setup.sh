#/bin/bash

# This script assumes you have already downloaded and installed relevant nvidia drivers.

# make a mining directory
#mkdir ~/mining;
# copy the scripts to mining
#cp * ~/mining;
# change to it
#cd ~/mining;
# grab the stable prebuilt ethminer
#   Building it from source with Hunter disabled is probably the 
#   best practice but is very time consuming and requires a decent
#   understanding of cmake
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.14.0.dev1/ethminer-0.14.0.dev1-Linux.tar.gz;
# uncompress ethminer
tar xvzf ethminer-0.14.0.dev1-Linux.tar.gz;

# optional change name of bin the eth, helpful if you want to have 
# executables for other coins in the same ~/mining folder
### mv bin eth
# if you do this please replace bin with eth from the rest of the instructions
# to to do this you can open this vile in vim and type :%s/bin/eth/g
#mv master-script.sh bin;
# enter directory bin
#cd bin;
# for convenience and organization's sake

