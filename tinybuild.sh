riscv64-unknown-elf-objcopy -O binary s stiny.bin -j .text
wc -c stiny.bin
hd stiny.bin
riscv64-unknown-elf-run stiny.bin

