/* SPDX-License-Identifier: WTFPL
 * Copyright (c) 2021 Chua Hou */

/* An implementation that should work without exploting C89. */

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
