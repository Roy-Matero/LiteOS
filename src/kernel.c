#include <kernel.h>;

void kmain()
{
    char *vidmem = (char *)0xB8000;
    for (int i = 0; i < 1000; i++)
    {
        vidmem[i] = 'a';
        vidmem[i + 1] = 0x07;
    }
}
