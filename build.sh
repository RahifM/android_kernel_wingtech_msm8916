make ARCH=arm wt88047_defconfig

PATH="$HOME/kernel/gcc49/arm/bin:${PATH}" \
make -j$(nproc --all) ARCH=arm \
                      CROSS_COMPILE=arm-linux-androideabi- \
                      2>&1 | tee buildlog.txt
