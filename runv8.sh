sed -e "s@/opt/[^']*@/opt/armv8_system@" -i ./configs/common/SysPaths.py

./build/ARM/gem5.opt configs/example/fs.py \
    --kernel=/opt/armv8_system/binaries/vmlinux-3.14-aarch64-vexpress-emm64 \
    --machine-type=VExpress_EMM64 \
    --disk-image=/opt/armv8_system/disks/linaro-minimal-armv8.img \
    --dtb-filename=/opt/armv8_system/binaries/rtsm_ve-aemv8a.dtb
