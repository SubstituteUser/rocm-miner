#/bin/bash

# set env variables for GPU
export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

# set rocm settings
  # fans 0-255
sudo ./rocm-smi --setfan 210;

# set percented based OC, max 20
# normally hits you with a y/n prompt
# pipe y into it to automate
# BE CAREFUL HERE I TAKE NO RESPONSIBILITY
# FOR ANY DAMAGE CAUSED BY ANY OVERCLOCKS
# Thus I will make you uncomment the below line if you wish
# to use that round about override

# echo y | ./rocm-smi --setoverdrive 5;

# set memory clock, 0-3
sudo ./rocm-smi --setmclk 3;
# set compute clock 0-7, most coins are memory bound, so lowering this will 
# result in lower power and temps with no performance loss. Dual mining is 
# an exception.
sudo ./rocm-smi --setsclk 3;

# record time for log, I do this to calculate how much extra money for power 
# I owe my roommates, as I do not mine 24/7
# TODO make a better logging system for 
echo `date '+%Y-%m-%d %H:%M:%S'` >> log.txt
sleep 1;

# Mine away, with appropriate flags
# This is for ethminer from https://github.com/ethereum-mining/ethminer
# For other mining software, this will need to be changed.
# Also do please change the wallet address and email, donations appreciated
# however
./ethminer -G -S eth-us-east1.nanopool.org:9999 -O
fB7371559013409db4f8a205103321a42ee32db6.mycroft/youremail@youremail.youremail


