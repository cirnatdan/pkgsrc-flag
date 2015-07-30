$NetBSD$

--- xhyverun.sh.orig	2015-07-03 22:02:48.000000000 +0000
+++ xhyverun.sh
@@ -1,7 +1,7 @@
 #!/bin/sh
 
-KERNEL="vmlinuz64"
-INITRD="initrd.img"
+KERNEL="/usr/pkg/share/boot2docker-xhyve/vmlinuz64"
+INITRD="/usr/pkg/share/boot2docker-xhyve/initrd.img"
 #CMDLINE="earlyprintk=serial console=ttyS0 acpi=off"
 CMDLINE="loglevel=3 user=docker console=ttyS0 console=tty0 noembed nomodeset norestore waitusb=10:LABEL=boot2docker-data base"
 
@@ -9,7 +9,7 @@ MEM="-m 1G"
 #SMP="-c 2"
 NET="-s 2:0,virtio-net"
 #IMG_CD="-s 3,ahci-cd,boot2docker.iso"
-IMG_HDD="-s 4,virtio-blk,boot2docker-data.img"
+IMG_HDD="-s 4,virtio-blk,/usr/pkg/share/boot2docker-xhyve/boot2docker-data.img"
 PCI_DEV="-s 0:0,hostbridge -s 31,lpc"
 LPC_DEV="-l com1,stdio"
 
