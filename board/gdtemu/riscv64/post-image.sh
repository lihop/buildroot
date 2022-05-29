#!/bin/bash

# TinyEMU only supports raw kernel images, so convert the ELF image into a raw
# image.

${HOST_DIR}/bin/riscv64-buildroot-linux-musl-objcopy -O binary \
	${BINARIES_DIR}/vmlinux ${BINARIES_DIR}/Image
