#by default run the 2.6.8.38 kernel and linux-arm-ael.img
#!bin/bash
checkpoint=/home/gyz/code/architecture/fullsys/gem5-stable-fs/m5out/fs
sed -e "s@/opt/[^']*@/opt/arm-system@" -i ./configs/common/SysPaths.py

./build/ARM/gem5.opt configs/example/fs.py  --benchmark=MibenchGSM \
	--checkpoint-dir=$checkpoint\
	--work-begin-checkpoint-count=1000 \
	--work-end-checkpoint-count=50000 
    
cat m5out/system.terminal

