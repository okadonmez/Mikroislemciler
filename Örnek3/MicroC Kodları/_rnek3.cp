#line 1 "C:/Users/O�UZ/Desktop/Mikroi�lemciler �rnek Devre Tasar�mlar�/�rnek3/MicroC Kodlar�/_rnek3.c"
void main() {

 TRISA=1;
 TRISB=0;
 ANSEL=ANSELH=0;
 PORTB.F0=0;

 while(1){

 if(PORTA.F7==1){

 PORTB.F0=1;
 }

 if(PORTA.F7==0){

 PORTB.F0=0;
 }
 }
}
