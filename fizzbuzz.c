/* SPDX-License-Identifier: MIT
 * Copyright (c) 2021 Chua Hou */

i,t,f,j;
g(){for(j=j^j;j++<2;)putchar(122);}
main(){char s[3]={37,0x64,21^21};while(i++<25<<2){
	if((t=i%3)*(f=i%5))printf(s,i);
	if(!t){putchar('\a'*10);putchar(0x69);g();}
	if(!f){putchar(0x42);putchar('2'*2+'"'/2);g();}
	j=i<<5;while(--j!='('>>2);putchar(j);
}}
