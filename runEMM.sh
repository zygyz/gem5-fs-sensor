sed -e "s@/opt/[^']*@/opt/arm-emm@" -i ./configs/common/SysPaths.py 

./build/ARM/gem5.opt configs/example/fs.py \
    --kernel=/opt/arm-emm/binaries/vmlinux-3.3-arm-vexpress-emm-pcie \
    --disk-image=/opt/arm-emm/disks/linux-arm-ael.img \
    --machine-type=VExpress_EMM
