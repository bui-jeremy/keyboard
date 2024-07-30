obj-m += interrupt_module.o

KERNEL_VERSION := $(shell uname -r)

build_module: interrupt_module.c
	make -C /lib/modules/$(KERNEL_VERSION)/build SUBDIRS=$(PWD) modules

load: build_module
	insmod interrupt_module.ko

unload:
	rmmod interrupt_module.ko
