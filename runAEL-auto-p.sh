#by default run the 2.6.8.38 kernel and linux-arm-ael.img
#!bin/bash
sed -e "s@/opt/[^']*@/opt/arm-system@" \
    -i ./configs/common/SysPaths.py

./build/ARM/gem5.opt configs/example/fs.py \
    --benchmark=MibenchGSM 
    
cat m5out/system.terminal

