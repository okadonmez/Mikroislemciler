#line 1 "C:/Users/O�UZ/Desktop/Mikroi�lemciler �rnek Devre Tasar�mlar�/�rnek2/MicroC Kodlar�/_rnek2.c"
#line 5 "C:/Users/O�UZ/Desktop/Mikroi�lemciler �rnek Devre Tasar�mlar�/�rnek2/MicroC Kodlar�/_rnek2.c"
void main() {

 TRISB=0;
 ANSEL=ANSELH=0;



 PORTB=0b11110000;
 delay_ms(50);

 while(1){

 PORTB=~PORTB;
 delay_ms(50);
 }
}
