riscv64-unknown-elf-gcc s.S -o s -nostartfiles -nostdlib $1 && riscv64-unknown-elf-run ./s
echo $?
