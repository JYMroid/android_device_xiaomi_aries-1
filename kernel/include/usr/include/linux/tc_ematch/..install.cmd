cmd_/source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/tc_ematch/.install := perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/kernel/xiaomi/aries/include/linux/tc_ematch /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/tc_ematch arm tc_em_cmp.h tc_em_meta.h tc_em_nbyte.h tc_em_text.h; perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/include/linux/tc_ematch /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/tc_ematch arm ; perl /source/cm-10.1/kernel/xiaomi/aries/scripts/headers_install.pl /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/include/generated/linux/tc_ematch /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/tc_ematch arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/tc_ematch/$$F; done; touch /source/cm-10.1/out/target/product/aries/obj/KERNEL_OBJ/usr/include/linux/tc_ematch/.install
