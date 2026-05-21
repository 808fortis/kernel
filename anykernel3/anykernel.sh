# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

properties() {
ui_print "KernelSU kernel for Realme C51/C53/Note50"
ui_print "Based on UNISOC T612 (ums312)"
}

## boot shell block
block=boot;
is_slot_device=auto;
ramdisk_compression=auto;
patch_vbmeta_flags=auto;

## select kernel
kernel=Image.gz-dtb;

## attributes
no_header_block=1;
do.split_perms=0;

# setup anykernel
setup_magisk;

# dump and patch
split_boot;
flash_boot;
flash_generic_recovery_kernel;

# end
write_boot;
