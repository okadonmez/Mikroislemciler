#line 1 "C:/Users/O�UZ/Desktop/Mikroi�lemciler �rnek Devre Tasar�mlar�/�rnek4/MicroC Kodlar�/_rnek4.c"
void main() {

 TRISB=0;
 ANSEL=ANSELH=0;
 PORTB=0b00110000;
 delay_ms(50);

 while(1){

 PORTB=PORTB<<1;
 delay_ms(50);

 if(PORTB>=0b11000000){

 PORTB=129;
 delay_ms(50);
 }

 if(PORTB>=0b10000001){

 PORTB=3;
 delay_ms(50);
 }
 }
}
