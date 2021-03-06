#!/bin/sh -e

echo "*** GEN YABOOT BEGIN ***"

SRC_DIR=$(pwd)

cd "$SRC_DIR"

echo "Create ofboot.b (OpenFirmware boot script)"
sh yaboot_ofboot.b.sh > work/yaboot/ofboot.b

echo "Create boot.msg (Yaboot boot message)"
sh yaboot_boot.msg.sh > work/yaboot/boot.msg

echo "Create yaboot.conf (Yaboot config)"
sh yaboot_yaboot.conf.sh > work/yaboot/yaboot.conf

echo "Create hfs.map (HFS Map)"
sh yaboot_hfs.map.sh > work/yaboot/hfs.map

echo "Create bootinfo.txt"
sh yaboot_bootinfo.txt.sh > work/yaboot/bootinfo.txt

echo "*** GEN YABOOT END ***"

