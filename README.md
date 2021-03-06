# fizzbuzz

[![License: WTFPL](https://img.shields.io/badge/License-WTFPL-brightgreen.svg)](http://www.wtfpl.net/about/)

*A try at writing some obfuscated "pretty" C, using the classic easy problem
FizzBuzz*

## Programs

### C89 pyramid

```c
            i,t,f,j;
           p(char c){
          putchar(c);}
         g(){for(j=j^j;
        j++<2;0)p(122);}
       main(){char s[3]={
      37,100,21^21};while(
     i++<25<<2){if((t=i%3)*
    (f=i%5))printf(s,i);if(!
   t){p('\a'*10);p(0x69);g();
  }if(!f){p(0x42);p('2'*2+'"'/
 2);g();;}j=i<<5;while(--j!='('
>>2);p(j);}puts("Am I hired?");}
```

### Modern hexagon

This works without exploiting C89, including `stdio.h` properly and using
explicit types.

```c
      #include<stdio.h>
     int i,t,f,j; void p
    (char c){putchar(c);}
   void g(){for(j=j^j;j++<
  2;0)p(122);}int main(void
 ){char s[3]={37,0x64,21^21}
;while(i++<25<<2){if((t=i%3)*
 (f=i%5))printf(s,i);if(!t){
  p('\a'*10);p(0x69);g();;}
   if(!f){p(0x42);p('2'*2+
    '"'/2);g();}j=i<<5;do
     ;while(--j!='('>>2)
      ;p(j);}return 0;}
```

It works on Hackerrank!

## Building and running

The Makefile allows you to build using

    make

upon which you can run using

    ./fizzbuzz

If you wish to install (why?) don't forget to set `DESTDIR` and `PREFIX` before
running

    make install

If you use Nix (yay), simply use the standard new commands like

    nix build
    nix run
