cmd_/source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/.install := perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/kernel/xiaomi/aries/include /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include arm ; perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/include /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include arm ; perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/include /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/$$F; done; touch /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/.install
