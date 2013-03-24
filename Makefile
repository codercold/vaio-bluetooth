obj-m += btusb.o ath3k.o

default:
	make -C /lib/modules/$(KVER)/build/ SUBDIRS=$(PWD) modules

install:
	cp btusb.ko /lib/modules/$(KVER)/kernel/drivers/bluetooth -f
	cp ath3k.ko /lib/modules/$(KVER)/kernel/drivers/bluetooth -f

clean:
	make -C /lib/modules/$(KVER)/build/ SUBDIRS=$(PWD) clean
