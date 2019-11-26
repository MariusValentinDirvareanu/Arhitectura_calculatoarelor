#include "p24ep256mc202.h"

unsigned short v[5]={400,300,500,200,100};
unsigned short p[5]={1,2,3,0,4};
unsigned short x[5];

extern void permutare(void);

int main(void){
    permutare();
    return 0;
}
