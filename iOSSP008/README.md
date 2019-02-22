## Use Swift in OC
```objc
// import <[Target Name-Swift.h]>
#import <iOSSP008-Swift.h>
```

# 2-2
## Delete Target
1. Xcode Nav
2. Xcode Targets
3. Scheme > Manage Scheme > -
4. File > New > Target

## Pointer
### Pointer is the Memory address. Value is universal, could be parsed to int, char, or any other types if needed.
```c
int a = 4;
// & - 取指针
// * - Declare a pointer of an int value
// pa 等价于 &a, int *为指针类型，而非*pa等价于&a
int * pa = &a;
// %p - pointer
printf("%p \n", pa);        // 0x7ffeefbff58c

char b = 'm';
char * pb = &b;
printf("%p \n", pb);        // 0x7ffeefbff57f
// %d - decimal/int
printf("%d \n", b);         // 109
// %c - char
printf("%c \n", b);         // m
// * - get value of the pointer pb
printf("%d \n", *pb);       // 109
```
### Pointer's Pointer
```c
int **ppa = &pa;
printf("%p\n", ppa);        // 0x7ffeefbff530
printf("%p\n", *ppa);       // 0x7ffeefbff58c
printf("%d\n", **ppa);      // 4
```
# 2-3
## Array Pointer
```c
char b[] = "hello";
// get 1st element's pointer
char *pb = b;
printf("%p\n",b);       // 522

for (int i = 0; i < 5; i++) {
    // printf("%c\n", b[i]);         // h, e, l, l, o
    printf("%c\n", *(b+i));         // h, e, l, l, o
}
```
# 2-4
### Function Pointer
```c
int getMax(int i, int j) {
    return i>j ? i : j;
}

// Declare: 返回值类（*名）（参数）
int (*p1)(int, int);
p1 = getMax;
// call
int result = p1(3,5);       // 5
```

