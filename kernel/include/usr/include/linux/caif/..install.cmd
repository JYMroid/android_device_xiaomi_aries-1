cmd_/source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/caif/.install := perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/kernel/xiaomi/aries/include/linux/caif /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/caif arm caif_socket.h if_caif.h; perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/include/linux/caif /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/caif arm ; perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/include/generated/linux/caif /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/caif arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/caif/$$F; done; touch /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/caif/.install
