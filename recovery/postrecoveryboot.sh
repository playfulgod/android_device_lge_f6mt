#!/sbin/sh

## Fix wtfe LG has aboot doing on reboot recovery
mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata

# Zero out boot recovery and wipe data command
#dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc seek=64 count=20 bs=1

# wait for system to settle
#sleep 5

# Tell us that we're in postrecoveryboot.sh
#echo "I:Postrecoveryboot script started!" >> /cache/recovery/log

# Clear "recovery --bnr_recovery-s" or etc flag.
#busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64

# Tell us that it worked!
#echo "I:LGE MISC flag reset" >> /cache/recovery/log
