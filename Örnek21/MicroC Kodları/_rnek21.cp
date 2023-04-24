#line 1 "C:/Users/OÐUZ/Desktop/3. Sýnýf Bilgisayar Mühendisliði Dersleri/Mikroiþlemciler/Örnekler/Örnek21/MicroC Kodlarý/_rnek21.c"
short say=0;

void interrupt(){

 if(say==30){

 ADCON0.GO=1;

 delay_us(100);

 PORTC=ADRESH;

 say=0;

 if(PORTC<64){

 PORTD=0b00000001;
 }

 if(PORTC>89){

 PORTD=0b00001000;
 }

 if(PORTC>64 && PORTC<89){

 PORTD=0b00000000;
 }
 }

 intcon.T0IF;
 say++;
}

void main(){

 ANSEL=1;
 ANSELH=0;
 TRISA=1;
 TRISC=0;
 TRISD=0;
 PORTC=0;
 PORTD=0;
 adcon1=0b00000000;
 adcon0=0b11000001;

 option_reg=0b00000111;

 intcon.GIE=1;
 intcon.T0IE=1;

 while(1){}
}
