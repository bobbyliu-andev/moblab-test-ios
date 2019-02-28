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
Pointer is the Memory address. Value is universal, could be parsed to int, char, or any other types if needed.
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
## Pointer's Pointer
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
## Function Pointer
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

# 2-6 Struct
## Declare
```cpp
struct Student {
    int id;
    char name[20];
    int* age;
    Student() {
        id = 114;
        strcpy(name, "Lilei");
        age = new int(20);
    }
};

Student s1 = Student();
Student s2;
printf("%d \n", *s2.age);     // 20
```
## char[] 赋值
```cpp
strcpy(name, "Lilei");
```
## Declare and instantiate
```cpp
struct Student3:Student{}stu3;
```
## typeof
```cpp
typedef struct Student4: Student{}Stu4;
```
# 2-7 Struct pointer
```cpp
// A printf format specifier follows the form
// %[flags][width][.precision][length]specifier.
// l - long - length
// u - unsigned - specifier
// so l should go before u
struct Teacher {
    unsigned int a:2;                   // 2 bits
}t, *pt;
pt = &t;                                // assign pointer
printf("size: %lu \n", sizeof(t));      // lu, not ul!
printf("%d \n", pt->a);                 // 取值pointer内部变量
```
# 2-8~10 Bit operator
- &
- |
- ~ - 非
- ^ - 异或
- `>>, <<` - 位移

# 2-11 宏定义
## change line
```c
#define swap(x,y)\
x=x+y;\
y=x-y;\
x=x-y
```
## if
```c
#ifdef A
    
#elif B
    
#else
    
#endif
```

## undefine
    #undef A

# 3-1
## OC组成
### ObjC = C + Preprocessor + Runtime
- Runtime is written in **C, C++, assembly**. 执行编译后的C++
    - [Apple Opensource Runtime](https://opensource.apple.com/source/objc4/)
    - [OOTB Runtime](https://github.com/gcfrun/Runtime-723)
    - 类函数 #import <objc/runtime.h>
    - 消息 #import <objc/message.h>
        ```c
        // objc_msgSend 使用前需强转类 或 在Build Settings中设置
        // (void (*)(id, SEL, int))(void *)objc_msgSend)
        ```
- Clang - Preprocessor/Compiler - Objective-C to C++
    - clang > rewrite-objc Son.m > 编译 -> .cpp



