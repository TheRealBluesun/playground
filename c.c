#include <stdint.h>
char mystr[] = "This is a test str";

int64_t myarr[] = {1,2,3,4,5,6,7,8,9,0};
uint8_t bytes[] = {8,8,8,8,8,8,8,8,8,8};

void dostuff(char *const data)
{
    data[0] = 0;
}

int _start(void)
{
    uint32_t myarr2[] = {0,9,8,7,6,5,4,3,2,1};
    static char buff[255];
    for(int i=0;i<10;i++)
        dostuff(buff);
    
    return (buff[0] == 0);
}

// typedef struct {
//     int a;
// } A;

// A b;

// int _start(void)
// {
//     b.a = 100;
//     return b.a;
// }