sed -e "s@/opt/[^']*@/opt/arm-system@" -i ./configs/common/SysPaths.py

./build/ARM/gem5.opt configs/example/fs.py \
    --kernel=/opt/arm-system/binaries/vmlinux.arm.smp.fb.2.6.38.8 \
    --disk-image=/opt/arm-system/disks/linux-arm-ael.img \
    --mem-size=256MB  \
