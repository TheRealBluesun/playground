if [ $1 ]
then
	riscv64-unknown-elf-gcc c.c -o c.c.S -S -nostdlib -nostartfiles
else
	riscv64-unknown-elf-gcc c.c -o c -nostdlib -nostartfiles
	riscv64-unknown-elf-objdump ./c -D
fi
