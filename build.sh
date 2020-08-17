nasm -f elf32 src/kernel.asm -o glacier/bin/kasm.o
gcc -m32 -c src/kernel.c -o glacier/bin/kc.o
ld -m elf_i386 -T src/link.ld -o glacier/boot/kernel.bin glacier/bin/kasm.o glacier/bin/kc.o
#qemu-system-x86_64 -kernel glacier/boot/kernel.bin
#grub-mkrescue -o glacier.iso glacier/
