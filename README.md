# rocm-miner
> a quick and dirty way to get up and running mining ethereum on
> the ROCm Platform

check out:

https://github.com/RadeonOpenCompute/ROCm

## Usage
```
# run the setup script
        ./setup.sh;

# edit master-scipt.sh using your favorite editor
# 1 substitue my address for yours, unless you want to donate :)
# 2 enter your email and rigname 
# 3 find a safe and suitable fan speed, edit it in
# 4 decide on a pool, nanopool is used for example
        # gedit master.sh
        # nano master.sh
        vim master.sh
# save your edited file

# run your master-script
# running as sudo for now, rocm-smi likes root priviledge
# TODO clean up priviledges
        sudo ./master-script.sh
# for nvidia cards, install proprietary drivers and do

        git checkout nvidia

# TODO 
## clean up priviledges
## make functional logging system
## make a damen?
## figure out nvidia overclock
```
