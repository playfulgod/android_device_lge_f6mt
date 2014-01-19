#!/bin/sh

rm /home/pressy4pie/android/loki/recovery.img
rm /home/pressy4pie/android/loki/cwm.lok

cp /home/pressy4pie/android/cm10.2/out/target/product/f6mt/recovery.img ~/android/loki/f6

cd /home/pressy4pie/android/loki/f6
./loki_patch recovery aboot.img recovery.img cwm.lok
echo PATCHED

adb push cwm.lok /data/local/tmp
echo Pushed
