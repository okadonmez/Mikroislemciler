#line 1 "C:/Users/O�UZ/Desktop/3. S�n�f Bilgisayar M�hendisli�i Dersleri/Mikroi�lemciler/IO Bilim �rnek Devre Tasar�mlar�/Ders5/MicroC Kodlar�/Ders5.c"
void main() {

 TRISA=0B00000000;
 PORTA=0;
 CMCON=7;

 while(1){

 PORTA.RA0=1;
 Delay_ms(25);
 PORTA.RA1=1;
 Delay_ms(25);
 PORTA.RA0=0;
 PORTA.RA1=0;
 PORTA.RA2=1;
 Delay_ms(25);
 PORTA.RA2=0;
 }
}
